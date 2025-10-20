import 'dart:convert';
import 'dart:developer' as developer;

import '../../../core/storage/local_storage.dart';
import '../../../core/storage/secure_storage.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/repositories/auth_repository.dart';
import '../../../domain/results/auth/fcm_token_result.dart';
import '../../../domain/results/auth/login_result.dart';
import '../../../domain/results/auth/logout_result.dart';
import '../../../domain/results/user/user_info_result.dart';
import '../../mappers/user_mapper.dart';
import '../apis/auth_api.dart';
import '../dtos/auth/login/login_request_dto.dart';
import '../dtos/auth/login/login_response_dto.dart';
import '../dtos/notification/fcm_token_request_dto.dart';
import 'package:dio/dio.dart';

/// Implementasi dari [AuthRepository] yang menggunakan [AuthApi] untuk komunikasi
/// jaringan dan secure storage untuk manajemen token.
class AuthRepositoryImpl implements AuthRepository {
  final AuthApi authApi;
  final SecureStorage secureStorage;
  final LocalStorage localStorage;

  AuthRepositoryImpl({
    required this.authApi,
    required this.secureStorage,
    required this.localStorage,
  });

  @override
  Future<LoginResult> login(String email, String password) async {
    try {
      final request = LoginRequestDto(email: email, password: password);
      final response = await authApi.login(request);

      // Save token securely
      await secureStorage.saveToken(response.token);
      await secureStorage.saveUserId(response.data.id);

      // Save user data locally
      await localStorage.saveUserData(jsonEncode(response.data.toJson()));
      await localStorage.setLoggedIn(true);

      developer.log('Login successful', name: 'AuthRepository');

      return LoginSuccess(
        token: response.token,
        user: UserMapper.fromDto(response.data),
      );
    } catch (e) {
      developer.log('Login failed: $e', name: 'AuthRepository', error: e);
      return LoginError(message: _parseErrorMessage(e));
    }
  }

  @override
  Future<LogoutResult> logout() async {
    try {
      await authApi.logout();
      developer.log('Logout successful', name: 'AuthRepository');
      return const LogoutSuccess();
    } catch (e) {
      developer.log('Logout API error: $e', name: 'AuthRepository', error: e);
    } finally {
      // Always clear local storage
      await secureStorage.clearAll();
      await localStorage.clearAll();
    }
    return const LogoutSuccess();
  }

  @override
  Future<FcmTokenResult> updateFcmToken(String fcmToken) async {
    try {
      final request = FcmTokenRequestDto(fcmId: fcmToken);
      await authApi.updateFcmToken(request);

      developer.log('FCM token updated successfully', name: 'AuthRepository');
      return const FcmTokenSuccess();
    } catch (e) {
      developer.log('FCM token update failed: $e',
          name: 'AuthRepository', error: e);
      return FcmTokenError(message: _parseErrorMessage(e));
    }
  }

  @override
  Future<UserEntity?> getCurrentUser() async {
    try {
      final userDataJson = await localStorage.getUserData();
      if (userDataJson == null || userDataJson.isEmpty) return null;

      // Konversi String JSON ke Map, kemudian ke UserDataDto
      final Map<String, dynamic> jsonMap = jsonDecode(userDataJson);
      final userDto = UserDataDto.fromJson(jsonMap);

      return UserMapper.fromDto(userDto);
    } catch (e) {
      developer.log('Get current user error: $e',
          name: 'AuthRepository', error: e);
      return null;
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    try {
      final isLoggedIn = await localStorage.isLoggedIn();
      final hasToken = await secureStorage.hasToken();
      return isLoggedIn && hasToken;
    } catch (e) {
      developer.log('Check login status error: $e',
          name: 'AuthRepository', error: e);
      return false;
    }
  }

  String _parseErrorMessage(dynamic error) {
    if (error is DioException) {
      final message = error.response?.data?['message'];
      if (message != null) return message.toString();
      return error.message ?? 'Unknown error';
    }
    return error.toString();
  }
}
import 'dart:convert';

import '../../../core/storage/local_storage.dart';
import '../../../core/storage/secure_storage.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/repositories/auth_repository.dart';
import '../../mappers/user_mapper.dart';
import '../apis/auth_api.dart';
import '../dtos/auth/login/login_request_dto.dart';
import '../dtos/auth/login/login_response_dto.dart';

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
  Future<UserEntity> login(String email, String password) async {
    try {
      final request = LoginRequestDto(
        email: email,
        password: password,
      );
      final response = await authApi.login(request);

      // Save token (format: token:kode_lisensi)
      await secureStorage.saveToken(response.token);
      await secureStorage.saveUserId(response.data.id);

      // Save user data
      await localStorage.saveUserData(jsonEncode(response.data.toJson()));
      await localStorage.setLoggedIn(true);

      return UserMapper.fromDto(response.data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      await authApi.logout();
    } catch (e) {
      // Continue with local logout even if API fails
    } finally {
      await secureStorage.clearAll();
      await localStorage.clearAll();
    }
  }

  @override
  Future<UserEntity?> getCurrentUser() async {
    try {
      final userDataJson = localStorage.getUserData();
      if (userDataJson == null) return null;

      final userData = jsonDecode(userDataJson);
      return UserMapper.fromDto(
        UserDataDto.fromJson(userData as Map<String, dynamic>),
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    return localStorage.isLoggedIn() && await secureStorage.hasToken();
  }

  @override
  Future<void> forgotPassword(String email) async {
    await authApi.forgotPassword(email);
  }

  @override
  Future<void> resetPassword(String token, String newPassword) async {
    // TODO: Implement reset password
    throw UnimplementedError();
  }
}
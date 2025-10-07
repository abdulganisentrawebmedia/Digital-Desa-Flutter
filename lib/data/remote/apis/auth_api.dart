import 'package:dio/dio.dart';
import '../../../core/constants/api_constants.dart';
import '../dtos/login_request_dto.dart';
import '../dtos/login_response_dto.dart';

class AuthApi {
  final Dio _dio;

  AuthApi(this._dio);

  Future<LoginResponseDto> login(LoginRequestDto request) async {
    try {
      final response = await _dio.post(
        ApiConstants.login,
        data: request.toJson(),
      );
      return LoginResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      await _dio.post(ApiConstants.logout);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> forgotPassword(String email) async {
    try {
      await _dio.post(
        ApiConstants.forgotPassword,
        data: {'email': email},
      );
    } catch (e) {
      rethrow;
    }
  }
}
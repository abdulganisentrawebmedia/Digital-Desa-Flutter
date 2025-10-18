import 'package:dio/dio.dart';
import '../../../core/constants/api_constants.dart';
import '../dtos/auth/login/login_request_dto.dart';
import '../dtos/auth/login/login_response_dto.dart';
import '../dtos/auth/logout/logout_response_dto.dart';
import '../dtos/auth/resetpassword/requestotp/request_otp_request_dto.dart';
import '../dtos/auth/resetpassword/requestotp/request_otp_response_dto.dart';
import '../dtos/auth/resetpassword/resetpassword/reset_password_request_dto.dart';
import '../dtos/auth/resetpassword/resetpassword/reset_password_response_dto.dart';
import '../dtos/auth/resetpassword/validateotp/validate_otp_request_dto.dart';
import '../dtos/auth/resetpassword/validateotp/validate_otp_response_dto.dart';
import '../dtos/notification/fcm_token_request_dto.dart';
import '../dtos/notification/fcm_token_response_dto.dart';
import '../dtos/user/user_info_response_dto.dart';

class AuthApi {
  final Dio _dio;

  AuthApi(this._dio);

  /// Login pengguna
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

  /// Logout pengguna
  Future<LogoutResponseDto> logout() async {
    try {
      final response = await _dio.delete(ApiConstants.logout);
      return LogoutResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Minta OTP untuk email/nomor HP
  Future<RequestOtpResponseDto> requestOtp(RequestOtpRequestDto request) async {
    try {
      final response = await _dio.post(
        ApiConstants.requestOtp,
        data: request.toJson(),
      );
      return RequestOtpResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Validasi OTP
  Future<ValidateOtpResponseDto> validateOtp(ValidateOtpRequestDto request) async {
    try {
      final response = await _dio.post(
        ApiConstants.validateOtp,
        data: request.toJson(),
      );
      return ValidateOtpResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Reset password setelah verifikasi OTP
  Future<ResetPasswordResponseDto> resetPassword(ResetPasswordRequestDto request) async {
    try {
      final response = await _dio.post(
        ApiConstants.resetPassword,
        data: request.toJson(),
      );
      return ResetPasswordResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Kirim token FCM ke backend
  Future<FcmTokenResponseDto> updateFcmToken(FcmTokenRequestDto request) async {
    try {
      final response = await _dio.post(
        ApiConstants.registerFcmToken,
        data: request.toJson(),
      );
      return FcmTokenResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Ambil info pengguna yang sedang login
  Future<UserInfoResponseDto> getUserInfo() async {
    try {
      final response = await _dio.get(ApiConstants.userInfo);
      return UserInfoResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
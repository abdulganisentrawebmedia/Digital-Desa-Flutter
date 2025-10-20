import 'dart:developer' as developer;

import '../../../domain/repositories/password_reset_repository.dart';
import '../../../domain/results/auth/request_otp_result.dart';
import '../../../domain/results/auth/reset_password_result.dart';
import '../../../domain/results/auth/validate_otp_result.dart';
import '../apis/auth_api.dart';
import '../dtos/auth/resetpassword/requestotp/request_otp_request_dto.dart';
import '../dtos/auth/resetpassword/resetpassword/reset_password_request_dto.dart';
import '../dtos/auth/resetpassword/validateotp/validate_otp_request_dto.dart';
import 'package:dio/dio.dart';

/// Implementasi dari [PasswordResetRepository] yang menggunakan [AuthApi]
/// untuk menangani proses OTP dan reset password dari backend.
class PasswordResetRepositoryImpl implements PasswordResetRepository {
  final AuthApi authApi;

  PasswordResetRepositoryImpl({required this.authApi});

  @override
  Future<RequestOtpResult> requestOtp(String email) async {
    try {
      final request = RequestOtpRequestDto(email: email);
      await authApi.requestOtp(request);

      developer.log('OTP request successful', name: 'PasswordResetRepository');
      return const RequestOtpSuccess();
    } catch (e) {
      developer.log('OTP request failed: $e',
          name: 'PasswordResetRepository', error: e);
      return RequestOtpError(message: _parseErrorMessage(e));
    }
  }

  @override
  Future<ValidateOtpResult> validateOtp(String email, String otp) async {
    try {
      final request = ValidateOtpRequestDto(email: email, otp: otp);
      final response = await authApi.validateOtp(request);

      developer.log('OTP validation successful: ${response.data.valid}',
          name: 'PasswordResetRepository');
      return ValidateOtpSuccess(isValid: response.data.valid);
    } catch (e) {
      developer.log('OTP validation failed: $e',
          name: 'PasswordResetRepository', error: e);
      return ValidateOtpError(message: _parseErrorMessage(e));
    }
  }

  @override
  Future<ResetPasswordResult> resetPassword(
      String email,
      String otp,
      String newPassword,
      ) async {
    try {
      final request = ResetPasswordRequestDto(
        email: email,
        otp: otp,
        password: newPassword,
      );
      await authApi.resetPassword(request);

      developer.log('Password reset successful',
          name: 'PasswordResetRepository');
      return const ResetPasswordSuccess();
    } catch (e) {
      developer.log('Password reset failed: $e',
          name: 'PasswordResetRepository', error: e);
      return ResetPasswordError(message: _parseErrorMessage(e));
    }
  }

  String _parseErrorMessage(dynamic error) {
    if (error is DioException) {
      return error.response?.data?['message'] ?? error.message ?? 'Unknown error';
    }
    return error.toString();
  }
}

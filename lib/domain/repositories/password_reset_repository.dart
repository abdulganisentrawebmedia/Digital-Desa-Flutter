import '../results/auth/request_otp_result.dart';
import '../results/auth/reset_password_result.dart';
import '../results/auth/validate_otp_result.dart';

/// Abstraksi untuk fitur reset password melalui OTP.
/// Digunakan saat pengguna lupa kata sandi dan membutuhkan proses verifikasi melalui email.
abstract class PasswordResetRepository {
  /// Meminta OTP untuk reset password yang akan dikirim ke email pengguna.
  ///
  /// @param email alamat email pengguna yang terdaftar
  /// @return [RequestOtpResult] status permintaan OTP
  Future<RequestOtpResult> requestOtp(String email);

  /// Memvalidasi OTP yang telah dikirim ke email pengguna.
  ///
  /// @param email email pengguna
  /// @param otp kode OTP yang dimasukkan pengguna
  /// @return [ValidateOtpResult] hasil validasi OTP
  Future<ValidateOtpResult> validateOtp(String email, String otp);

  /// Melakukan reset password pengguna setelah OTP valid.
  ///
  /// @param email email pengguna
  /// @param otp kode OTP yang sudah diverifikasi
  /// @param newPassword kata sandi baru
  /// @return [ResetPasswordResult] status reset password
  Future<ResetPasswordResult> resetPassword(
      String email,
      String otp,
      String newPassword,
      );
}
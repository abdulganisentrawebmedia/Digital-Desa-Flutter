import '../entities/user_entity.dart';
import '../results/auth/fcm_token_result.dart';
import '../results/auth/login_result.dart';
import '../results/auth/logout_result.dart';

/// Abstraksi untuk manajemen autentikasi pengguna.
/// Implementasi default disediakan oleh [AuthRepositoryImpl].
abstract class AuthRepository {
  /// Melakukan proses login menggunakan email dan password.
  ///
  /// @param email alamat email atau NIK
  /// @param password kata sandi pengguna
  /// @return [LoginResult] yang berisi token dan user jika berhasil, atau pesan error
  Future<LoginResult> login(String email, String password);

  /// Melakukan logout pengguna dari server dan mengakhiri sesi.
  ///
  /// @return [LogoutResult] status logout
  Future<LogoutResult> logout();

  /// Mengirim dan memperbarui token FCM milik pengguna ke backend.
  ///
  /// @param fcmToken token Firebase Cloud Messaging
  /// @return [FcmTokenResult] hasil update token
  Future<FcmTokenResult> updateFcmToken(String fcmToken);

  /// Mengambil user yang sedang login dari storage lokal
  Future<UserEntity?> getCurrentUser();

  /// Memeriksa apakah pengguna sedang login
  Future<bool> isLoggedIn();
}
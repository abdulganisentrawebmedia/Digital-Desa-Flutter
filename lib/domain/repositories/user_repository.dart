import '../results/user/user_info_result.dart';

/// Abstraksi untuk operasi terkait data pengguna (user).
abstract class UserRepository {
  /// Mengambil informasi pengguna yang sedang login.
  ///
  /// @return [UserInfoResult] hasil permintaan data user (berhasil/gagal)
  Future<UserInfoResult> getUserInfo();
}
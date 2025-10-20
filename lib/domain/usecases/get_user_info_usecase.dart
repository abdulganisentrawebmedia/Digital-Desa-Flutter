import '../repositories/user_repository.dart';
import '../results/user/user_info_result.dart';

class GetUserInfoUseCase {
  final UserRepository _userRepository;

  GetUserInfoUseCase(this._userRepository);

  /// Menjalankan proses pengambilan informasi pengguna.
  ///
  /// @return [UserInfoResult] hasil berisi informasi pengguna.
  Future<UserInfoResult> call() async {
    return await _userRepository.getUserInfo();
  }
}
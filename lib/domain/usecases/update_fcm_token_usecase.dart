import '../repositories/auth_repository.dart';
import '../results/auth/fcm_token_result.dart';

class UpdateFcmTokenUseCase {
  final AuthRepository _authRepository;

  UpdateFcmTokenUseCase(this._authRepository);

  /// Menjalankan proses update FCM token.
  ///
  /// @return [FcmTokenResult] hasil dari update FCM token.
  Future<FcmTokenResult> call(String fcmToken) async {
    return await _authRepository.updateFcmToken(fcmToken);
  }
}
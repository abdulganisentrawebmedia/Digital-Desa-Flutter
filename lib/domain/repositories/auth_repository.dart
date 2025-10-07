import '../entities/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity> login(String email, String password, String kodeLisensi);
  Future<void> logout();
  Future<UserEntity?> getCurrentUser();
  Future<bool> isLoggedIn();
  Future<void> forgotPassword(String email);
  Future<void> resetPassword(String token, String newPassword);
}
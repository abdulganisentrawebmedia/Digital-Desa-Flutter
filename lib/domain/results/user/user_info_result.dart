import '../../entities/user_entity.dart';

sealed class UserInfoResult {
  const UserInfoResult();
}

class UserInfoSuccess extends UserInfoResult {
  final UserEntity user;

  const UserInfoSuccess({required this.user});
}

class UserInfoError extends UserInfoResult {
  final String message;

  const UserInfoError({required this.message});
}
import 'package:digital_desa/domain/results/auth/login_result.dart';

import '../repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  Future<LoginResult> call(String email, String password) async {
    return await _repository.login(email, password);
  }
}
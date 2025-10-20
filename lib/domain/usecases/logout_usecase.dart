import 'package:digital_desa/domain/results/auth/logout_result.dart';

import '../repositories/auth_repository.dart';

class LogoutUseCase {
  final AuthRepository _repository;

  LogoutUseCase(this._repository);

  Future<LogoutResult> call() async {
    return await _repository.logout();
  }
}
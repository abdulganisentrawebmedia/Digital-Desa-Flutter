import 'dart:developer' as developer;

import '../../../domain/repositories/user_repository.dart';
import '../../../domain/results/user/user_info_result.dart';
import '../../mappers/user_mapper.dart';
import '../apis/user_api.dart';
import 'package:dio/dio.dart';

/// Implementasi dari [UserRepository] yang menggunakan [UserApi] untuk
/// komunikasi dengan server.
class UserRepositoryImpl implements UserRepository {
  final UserApi userApi;

  UserRepositoryImpl({required this.userApi});

  @override
  Future<UserInfoResult> getUserInfo() async {
    try {
      final response = await userApi.getUserInfo();
      developer.log('Fetched user info', name: 'UserRepository');
      return UserInfoSuccess(user: UserMapper.fromInfoDto(response.data));
    } catch (e) {
      developer.log('User info failed: $e',
          name: 'UserRepository', error: e);
      return UserInfoError(message: _parseErrorMessage(e));
    }
  }

  String _parseErrorMessage(dynamic error) {
    if (error is DioException) {
      final message = error.response?.data?['message'];
      if (message != null) return message.toString();
      return error.message ?? 'Unknown error';
    }
    return error.toString();
  }
}

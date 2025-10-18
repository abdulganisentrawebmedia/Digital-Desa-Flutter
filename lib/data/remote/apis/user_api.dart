import 'package:dio/dio.dart';
import '../../../core/constants/api_constants.dart';
import '../dtos/user/user_info_response_dto.dart';

class UserApi {
  final Dio _dio;

  UserApi(this._dio);

  Future<UserInfoResponseDto> getUserInfo() async {
    try {
      final response = await _dio.get(ApiConstants.userInfo);
      return UserInfoResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
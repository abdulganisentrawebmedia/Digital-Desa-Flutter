import 'package:dio/dio.dart';
import '../../../core/constants/api_constants.dart';
import '../dtos/notification/notification_response_dto.dart';

class NotificationApi {
  final Dio _dio;

  NotificationApi(this._dio);

  Future<NotificationResponseDto> getNotificationInfo() async {
    try {
      final response = await _dio.get(ApiConstants.notificationInfo);
      return NotificationResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
import 'package:dio/dio.dart';
import '../../../core/constants/api_constants.dart';
import '../dtos/file/file_upload_response_dto.dart';

class FileApi {
  final Dio _dio;

  FileApi(this._dio);

  Future<Response> getFile(String id) async {
    try {
      final response = await _dio.get(
        ApiConstants.clientFileById.replaceAll(':id', id),
        options: Options(responseType: ResponseType.bytes),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<FileUploadResponseDto> uploadFile({
    required MultipartFile file,
  }) async {
    try {
      final formData = FormData.fromMap({'file': file});
      final response = await _dio.post(
        ApiConstants.clientFile,
        data: formData,
      );
      return FileUploadResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
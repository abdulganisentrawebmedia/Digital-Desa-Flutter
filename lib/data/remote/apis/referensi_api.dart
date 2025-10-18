import 'package:dio/dio.dart';
import '../../../core/constants/api_constants.dart';
import '../dtos/referensi/agama_response_dto.dart';
import '../dtos/referensi/bidang_usaha_dto.dart';
import '../dtos/referensi/disabilitas_data_dto.dart';
import '../dtos/referensi/disahkan_oleh_response_dto.dart';
import '../dtos/referensi/hubungan_response_dto.dart';
import '../dtos/referensi/jenis_usaha_data_dto.dart';
import '../dtos/referensi/pendidikan_data_dto.dart';
import '../dtos/referensi/perbedaan_identitas_data_dto.dart';
import '../dtos/referensi/status_kawin_data_dto.dart';
import '../dtos/referensi/tercantum_identitas_data_dto.dart';

class ReferensiApi {
  final Dio _dio;

  ReferensiApi(this._dio);

  Future<TercantumIdentitasResponseDto> getTercantumIdentitas() async {
    try {
      final response = await _dio.get(ApiConstants.refTercantumIdentitas);
      return TercantumIdentitasResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<PerbedaanIdentitasResponseDto> getPerbedaanIdentitas() async {
    try {
      final response = await _dio.get(ApiConstants.refPerbedaanIdentitas);
      return PerbedaanIdentitasResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<DisahkanOlehResponseDto> getDisahkanOleh() async {
    try {
      final response = await _dio.get(ApiConstants.refDisahkanOleh);
      return DisahkanOlehResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<AgamaResponseDto> getAgama() async {
    try {
      final response = await _dio.get(ApiConstants.refAgama);
      return AgamaResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<JenisUsahaResponseDto> getJenisUsaha() async {
    try {
      final response = await _dio.get(ApiConstants.refJenisUsaha);
      return JenisUsahaResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<BidangUsahaResponseDto> getBidangUsaha() async {
    try {
      final response = await _dio.get(ApiConstants.refBidangUsaha);
      return BidangUsahaResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<StatusKawinResponseDto> getStatusKawin() async {
    try {
      final response = await _dio.get(ApiConstants.refStatusKawin);
      return StatusKawinResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<PendidikanResponseDto> getPendidikan() async {
    try {
      final response = await _dio.get(ApiConstants.refPendidikan);
      return PendidikanResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<HubunganResponseDto> getHubungan() async {
    try {
      final response = await _dio.get(ApiConstants.refHubungan);
      return HubunganResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<DisabilitasResponseDto> getDisabilitas() async {
    try {
      final response = await _dio.get(ApiConstants.refDisabilitas);
      return DisabilitasResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
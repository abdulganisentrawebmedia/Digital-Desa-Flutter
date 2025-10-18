import 'package:dio/dio.dart';
import '../../../core/constants/api_constants.dart';
import '../dtos/surat/surat_detail_response_dto.dart';
import '../dtos/surat/surat_list_dto.dart';
import '../dtos/surat/suratketerangan/skbedaidentitas/sk_beda_identitas_request_dto.dart';
import '../dtos/surat/suratketerangan/skbedaidentitas/sk_beda_identitas_response_dto.dart';
import '../dtos/surat/suratketerangan/skbelummemilikipbb/sk_belum_memiliki_pbb_request_dto.dart';
import '../dtos/surat/suratketerangan/skbelummemilikipbb/sk_belum_memiliki_pbb_response_dto.dart';
import '../dtos/surat/suratketerangan/skberpergian/sk_berpergian_request_dto.dart';
import '../dtos/surat/suratketerangan/skberpergian/sk_berpergian_response_dto.dart';
import '../dtos/surat/suratketerangan/skbiodatawarga/sk_biodata_warga_request_dto.dart';
import '../dtos/surat/suratketerangan/skbiodatawarga/sk_biodata_warga_response_dto.dart';
import '../dtos/surat/suratketerangan/skdomisili/sk_domisili_request_dto.dart';
import '../dtos/surat/suratketerangan/skdomisili/sk_domisili_response_dto.dart';
import '../dtos/surat/suratketerangan/skdomisiliperusahaan/sk_domisili_perusahaan_request_dto.dart';
import '../dtos/surat/suratketerangan/skdomisiliperusahaan/sk_domisili_perusahaan_response_dto.dart';
import '../dtos/surat/suratketerangan/skghaib/sk_ghaib_request_dto.dart';
import '../dtos/surat/suratketerangan/skghaib/sk_ghaib_response_dto.dart';
import '../dtos/surat/suratketerangan/skizinorangtua/sk_izin_orang_tua_request_dto.dart';
import '../dtos/surat/suratketerangan/skizinorangtua/sk_izin_orang_tua_response_dto.dart';
import '../dtos/surat/suratketerangan/skizintidakmasukkerja/sk_izin_tidak_masuk_kerja_request_dto.dart';
import '../dtos/surat/suratketerangan/skizintidakmasukkerja/sk_izin_tidak_masuk_kerja_response_dto.dart';
import '../dtos/surat/suratketerangan/skjamkesos/sk_jamkesos_request_dto.dart';
import '../dtos/surat/suratketerangan/skjamkesos/sk_jamkesos_response_dto.dart';
import '../dtos/surat/suratketerangan/skjandaduda/sk_janda_duda_request_dto.dart';
import '../dtos/surat/suratketerangan/skjandaduda/sk_janda_duda_response_dto.dart';
import '../dtos/surat/suratketerangan/skjualbeli/sk_jual_beli_request_dto.dart';
import '../dtos/surat/suratketerangan/skjualbeli/sk_jual_beli_response_dto.dart';
import '../dtos/surat/suratketerangan/skkelahiran/sk_kelahiran_request_dto.dart';
import '../dtos/surat/suratketerangan/skkelahiran/sk_kelahiran_response_dto.dart';
import '../dtos/surat/suratketerangan/skkematian/sk_kematian_request_dto.dart';
import '../dtos/surat/suratketerangan/skkematian/sk_kematian_response_dto.dart';
import '../dtos/surat/suratketerangan/skkepemilikankendaraan/sk_kepemilikan_kendaraan_request_dto.dart';
import '../dtos/surat/suratketerangan/skkepemilikankendaraan/sk_kepemilikan_kendaraan_response_dto.dart';
import '../dtos/surat/suratketerangan/skkepemilikantanah/sk_kepemilikan_tanah_request_dto.dart';
import '../dtos/surat/suratketerangan/skkepemilikantanah/sk_kepemilikan_tanah_response_dto.dart';
import '../dtos/surat/suratketerangan/skktpdalamproses/sk_ktp_dalam_proses_request_dto.dart';
import '../dtos/surat/suratketerangan/skktpdalamproses/sk_ktp_dalam_proses_response_dto.dart';
import '../dtos/surat/suratketerangan/sklahirmati/sk_lahir_mati_request_dto.dart';
import '../dtos/surat/suratketerangan/sklahirmati/sk_lahir_mati_response_dto.dart';
import '../dtos/surat/suratketerangan/sknikahnonmuslim/sk_nikah_non_muslim_request_dto.dart';
import '../dtos/surat/suratketerangan/sknikahnonmuslim/sk_nikah_non_muslim_response_dto.dart';
import '../dtos/surat/suratketerangan/skpengantarcerairujuk/sk_pengantar_cerai_rujuk_request_dto.dart';
import '../dtos/surat/suratketerangan/skpengantarcerairujuk/sk_pengantar_cerai_rujuk_response_dto.dart';
import '../dtos/surat/suratketerangan/skpenghasilan/sk_penghasilan_request_dto.dart';
import '../dtos/surat/suratketerangan/skpenghasilan/sk_penghasilan_response_dto.dart';
import '../dtos/surat/suratketerangan/skpergikawin/sk_pergi_kawin_request_dto.dart';
import '../dtos/surat/suratketerangan/skpergikawin/sk_pergi_kawin_response_dto.dart';
import '../dtos/surat/suratketerangan/skresiktpsementara/sk_resi_ktp_sementara_request_dto.dart';
import '../dtos/surat/suratketerangan/skresiktpsementara/sk_resi_ktp_sementara_response_dto.dart';
import '../dtos/surat/suratketerangan/skstatusperkawinan/sk_status_perkawinan_request_dto.dart';
import '../dtos/surat/suratketerangan/skstatusperkawinan/sk_status_perkawinan_response_dto.dart';
import '../dtos/surat/suratketerangan/sktidakmampu/sk_tidak_mampu_request_dto.dart';
import '../dtos/surat/suratketerangan/sktidakmampu/sk_tidak_mampu_response_dto.dart';
import '../dtos/surat/suratketerangan/skusaha/sk_usaha_request_dto.dart';
import '../dtos/surat/suratketerangan/skusaha/sk_usaha_response_dto.dart';
import '../dtos/surat/suratketerangan/skwalihakim/sk_wali_hakim_request_dto.dart';
import '../dtos/surat/suratketerangan/skwalihakim/sk_wali_hakim_response_dto.dart';
import '../dtos/surat/suratlainnya/suratkuasa/surat_kuasa_request_dto.dart';
import '../dtos/surat/suratlainnya/suratkuasa/surat_kuasa_response_dto.dart';
import '../dtos/surat/suratlainnya/surattugas/surat_tugas_request_dto.dart';
import '../dtos/surat/suratlainnya/surattugas/surat_tugas_response_dto.dart';
import '../dtos/surat/suratpengantar/spcatatankepolisian/sp_catatan_kepolisian_request_dto.dart';
import '../dtos/surat/suratpengantar/spcatatankepolisian/sp_catatan_kepolisian_response_dto.dart';
import '../dtos/surat/suratpengantar/spkehilangan/sp_kehilangan_request_dto.dart';
import '../dtos/surat/suratpengantar/spkehilangan/sp_kehilangan_response_dto.dart';
import '../dtos/surat/suratpengantar/sppermohonanpenerbitanbukupaslintasbatas/sp_permohonan_penerbitan_buku_pas_lintas_batas_request_dto.dart';
import '../dtos/surat/suratpengantar/sppermohonanpenerbitanbukupaslintasbatas/sp_permohonan_penerbitan_buku_pas_lintas_batas_response_dto.dart';
import '../dtos/surat/suratpengantar/sppernikahan/sp_pernikahan_request_dto.dart';
import '../dtos/surat/suratpengantar/sppernikahan/sp_pernikahan_response_dto.dart';
import '../dtos/surat/suratpengantar/sppindahdomisili/sp_pindah_domisili_request_dto.dart';
import '../dtos/surat/suratpengantar/sppindahdomisili/sp_pindah_domisili_response_dto.dart';
import '../dtos/surat/suratpermohonan/spmaktalahir/spm_akta_lahir_request_dto.dart';
import '../dtos/surat/suratpermohonan/spmaktalahir/spm_akta_lahir_response_dto.dart';
import '../dtos/surat/suratpermohonan/spmbelummemilikiaktalahir/spm_belum_memiliki_akta_lahir_request_dto.dart';
import '../dtos/surat/suratpermohonan/spmbelummemilikiaktalahir/spm_belum_memiliki_akta_lahir_response_dto.dart';
import '../dtos/surat/suratpermohonan/spmcerai/spm_cerai_request_dto.dart';
import '../dtos/surat/suratpermohonan/spmcerai/spm_cerai_response_dto.dart';
import '../dtos/surat/suratpermohonan/spmduplikatkelahiran/spm_duplikat_kelahiran_request_dto.dart';
import '../dtos/surat/suratpermohonan/spmduplikatkelahiran/spm_duplikat_kelahiran_response_dto.dart';
import '../dtos/surat/suratpermohonan/spmduplikatsuratnikah/spm_duplikat_surat_nikah_request_dto.dart';
import '../dtos/surat/suratpermohonan/spmduplikatsuratnikah/spm_duplikat_surat_nikah_response_dto.dart';
import '../dtos/surat/suratpermohonan/spmkartukeluarga/spm_kartu_keluarga_request_dto.dart';
import '../dtos/surat/suratpermohonan/spmkartukeluarga/spm_kartu_keluarga_response_dto.dart';
import '../dtos/surat/suratpermohonan/spmperubahankk/spm_perubahan_kk_request_dto.dart';
import '../dtos/surat/suratpermohonan/spmperubahankk/spm_perubahan_kk_response_dto.dart';
import '../dtos/surat/suratpernyataan/spn_penguasaan_fisik_bidang_tanah_request_dto.dart';
import '../dtos/surat/suratpernyataan/spn_penguasaan_fisik_bidang_tanah_response_dto.dart';
import '../dtos/surat/suratrekomendasi/sr_keramaian_request_dto.dart';
import '../dtos/surat/suratrekomendasi/sr_keramaian_response_dto.dart';

class SuratApi {
  final Dio _dio;

  SuratApi(this._dio);

  // MARK: - GET Requests

  /// Mendapatkan daftar surat
  Future<SuratListResponseDto> getSuratList({
    int? page,
    int? limit,
    String? search,
    String? jenisSurat,
    String? status,
    String? startDate,
    String? endDate,
  }) async {
    try {
      final queryParameters = <String, dynamic>{};

      if (page != null) queryParameters['page'] = page;
      if (limit != null) queryParameters['limit'] = limit;
      if (search != null && search.isNotEmpty) queryParameters['search'] = search;
      if (jenisSurat != null && jenisSurat.isNotEmpty) {
        queryParameters['jenis_surat'] = jenisSurat;
      }
      if (status != null && status.isNotEmpty) queryParameters['status'] = status;
      if (startDate != null && startDate.isNotEmpty) {
        queryParameters['start_date'] = startDate;
      }
      if (endDate != null && endDate.isNotEmpty) {
        queryParameters['end_date'] = endDate;
      }

      final response = await _dio.get(
        ApiConstants.suratList,
        queryParameters: queryParameters.isEmpty ? null : queryParameters,
      );
      return SuratListResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Mendapatkan detail surat berdasarkan ID
  Future<SuratDetailResponseDto> getSuratDetail(String id) async {
    try {
      final response = await _dio.get(
        ApiConstants.suratDetail.replaceAll(':id', id),
      );
      return SuratDetailResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  // MARK: - POST Requests

  /// Membuat surat bepergian/berpergian
  Future<SKBerpergianResponseDto> createSuratBepergian(
      SKBerpergianRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratBepergian,
        data: request.toJson(),
      );
      return SKBerpergianResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan beda identitas
  Future<SKBedaIdentitasResponseDto> createSuratBedaIdentitas(
      SKBedaIdentitasRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratBedaIdentitas,
        data: request.toJson(),
      );
      return SKBedaIdentitasResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan belum memiliki PBB
  Future<SKBelumMemilikiPBBResponseDto> createSuratBelumMemilikiPBB(
      SKBelumMemilikiPBBRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratBelumMemilikiPBB,
        data: request.toJson(),
      );
      return SKBelumMemilikiPBBResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan domisili
  Future<SKDomisiliResponseDto> createSuratDomisili(
      SKDomisiliRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratDomisili,
        data: request.toJson(),
      );
      return SKDomisiliResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan domisili perusahaan
  Future<SKDomisiliPerusahaanResponseDto> createSuratDomisiliPerusahaan(
      SKDomisiliPerusahaanRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratDomisiliPerusahaan,
        data: request.toJson(),
      );
      return SKDomisiliPerusahaanResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan ghaib
  Future<SKGhaibResponseDto> createSuratGhaib(
      SKGhaibRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratGhaib,
        data: request.toJson(),
      );
      return SKGhaibResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan izin tidak kerja
  Future<SKIzinTidakMasukKerjaResponseDto> createSuratIzinTidakKerja(
      SKIzinTidakMasukKerjaRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratIzinTidakKerja,
        data: request.toJson(),
      );
      return SKIzinTidakMasukKerjaResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan jamkesos
  Future<SKJamkesosResponseDto> createSuratJamkesos(
      SKJamkesosRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratJamkesos,
        data: request.toJson(),
      );
      return SKJamkesosResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan janda/duda
  Future<SKJandaDudaResponseDto> createSuratJandaDuda(
      SKJandaDudaRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratJandaDuda,
        data: request.toJson(),
      );
      return SKJandaDudaResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan jual beli
  Future<SKJualBeliResponseDto> createSuratJualBeli(
      SKJualBeliRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratJualBeli,
        data: request.toJson(),
      );
      return SKJualBeliResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat pernyataan kehilangan
  Future<SPKehilanganResponseDto> createSuratKehilangan(
      SPKehilanganRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratKehilangan,
        data: request.toJson(),
      );
      return SPKehilanganResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan kelahiran
  Future<SKKelahiranResponseDto> createSuratKelahiran(
      SKKelahiranRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratKelahiran,
        data: request.toJson(),
      );
      return SKKelahiranResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan kematian
  Future<SKKematianResponseDto> createSuratKematian(
      SKKematianRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratKematian,
        data: request.toJson(),
      );
      return SKKematianResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat rekomendasi keramaian
  Future<SRKeramaianResponseDto> createSuratKeramaian(
      SRKeramaianRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratKeramaian,
        data: request.toJson(),
      );
      return SRKeramaianResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan KTP dalam proses
  Future<SKKTPDalamProsesResponseDto> createSuratKTPDalamProses(
      SKKTPDalamProsesRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratKTPDalamProses,
        data: request.toJson(),
      );
      return SKKTPDalamProsesResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat kuasa
  Future<SuratKuasaResponseDto> createSuratKuasa(
      SuratKuasaRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratKuasa,
        data: request.toJson(),
      );
      return SuratKuasaResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan penghasilan
  Future<SKPenghasilanResponseDto> createSuratPenghasilan(
      SKPenghasilanRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratPenghasilan,
        data: request.toJson(),
      );
      return SKPenghasilanResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat pengantar pernikahan
  Future<SPPernikahanResponseDto> createSuratPernikahan(
      SPPernikahanRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratPernikahan,
        data: request.toJson(),
      );
      return SPPernikahanResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat pengantar pindah domisili
  Future<SPPindahDomisiliResponseDto> createSuratPindahDomisili(
      SPPindahDomisiliRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratPindahDomisili,
        data: request.toJson(),
      );
      return SPPindahDomisiliResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan resi KTP sementara
  Future<SKResiKTPSementaraResponseDto> createResiKTPSementara(
      SKResiKTPSementaraRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratResiKTPSementara,
        data: request.toJson(),
      );
      return SKResiKTPSementaraResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat pengantar catatan kepolisian (SKCK)
  Future<SPCatatanKepolisianResponseDto> createSuratSKCK(
      SPCatatanKepolisianRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratSKCK,
        data: request.toJson(),
      );
      return SPCatatanKepolisianResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan status perkawinan
  Future<SKStatusPerkawinanResponseDto> createSuratStatusPerkawinan(
      SKStatusPerkawinanRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratStatusPerkawinan,
        data: request.toJson(),
      );
      return SKStatusPerkawinanResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan tidak mampu
  Future<SKTidakMampuResponseDto> createSuratTidakMampu(
      SKTidakMampuRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratTidakMampu,
        data: request.toJson(),
      );
      return SKTidakMampuResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat tugas
  Future<SuratTugasResponseDto> createSuratTugas(
      SuratTugasRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratTugas,
        data: request.toJson(),
      );
      return SuratTugasResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan usaha
  Future<SKUsahaResponseDto> createSuratUsaha(
      SKUsahaRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratUsaha,
        data: request.toJson(),
      );
      return SKUsahaResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan lahir mati
  Future<SKLahirMatiResponseDto> createSuratLahirMati(
      SKLahirMatiRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratLahirMati,
        data: request.toJson(),
      );
      return SKLahirMatiResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan pergi kawin
  Future<SKPergiKawinResponseDto> createSuratPergiKawin(
      SKPergiKawinRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratPergiKawin,
        data: request.toJson(),
      );
      return SKPergiKawinResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan wali hakim
  Future<SKWaliHakimResponseDto> createSuratWaliHakim(
      SKWaliHakimRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratWaliHakim,
        data: request.toJson(),
      );
      return SKWaliHakimResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan kepemilikan kendaraan
  Future<SKKepemilikanKendaraanResponseDto> createSuratKepemilikanKendaraan(
      SKKepemilikanKendaraanRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratKepemilikanKendaraan,
        data: request.toJson(),
      );
      return SKKepemilikanKendaraanResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan biodata warga
  Future<SKBiodataWargaResponseDto> createSuratKeteranganBiodataWarga(
      SKBiodataWargaRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratBiodataWarga,
        data: request.toJson(),
      );
      return SKBiodataWargaResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat pengantar pas lintas batas
  Future<SPPermohonanPenerbitanBukuPasLintasBatasResponseDto>
  createSuratPengantarPasLintasBatas(
      SPPermohonanPenerbitanBukuPasLintasBatasRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratPasLintasBatas,
        data: request.toJson(),
      );
      return SPPermohonanPenerbitanBukuPasLintasBatasResponseDto.fromJson(
        response.data,
      );
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan nikah non muslim
  Future<SKNikahNonMuslimResponseDto> createSuratKeteranganNikahNonMuslim(
      SKNikahNonMuslimRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratNikahNonMuslim,
        data: request.toJson(),
      );
      return SKNikahNonMuslimResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan kepemilikan tanah
  Future<SKKepemilikanTanahResponseDto> createSuratKeteranganKepemilikanTanah(
      SKKepemilikanTanahRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratKepemilikanTanah,
        data: request.toJson(),
      );
      return SKKepemilikanTanahResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat pengantar minta akta lahir
  Future<SPMAktaLahirResponseDto> createSuratAktaLahir(
      SPMAktaLahirRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratAktaLahir,
        data: request.toJson(),
      );
      return SPMAktaLahirResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat pengantar minta belum memiliki akta lahir
  Future<SPMBelumMemilikiAktaLahirResponseDto>
  createSuratBelumMemilikiAktaLahir(
      SPMBelumMemilikiAktaLahirRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratBelumMemilikiAktaLahir,
        data: request.toJson(),
      );
      return SPMBelumMemilikiAktaLahirResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat pengantar minta duplikat kelahiran
  Future<SPMDuplikatKelahiranResponseDto> createSuratDuplikatKelahiran(
      SPMDuplikatKelahiranRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratDuplikatKelahiran,
        data: request.toJson(),
      );
      return SPMDuplikatKelahiranResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat pengantar minta duplikat surat nikah
  Future<SPMDuplikatSuratNikahResponseDto> createSuratDuplikatSuratNikah(
      SPMDuplikatSuratNikahRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratDuplikatSuratNikah,
        data: request.toJson(),
      );
      return SPMDuplikatSuratNikahResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat pengantar minta cerai
  Future<SPMCeraiResponseDto> createSuratPermohonanCerai(
      SPMCeraiRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratPermohonanCerai,
        data: request.toJson(),
      );
      return SPMCeraiResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan pengantar cerai rujuk
  Future<SKPengantarCeraiRujukResponseDto> createSuratPengantarCeraiRujuk(
      SKPengantarCeraiRujukRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratPengantarCeraiRujuk,
        data: request.toJson(),
      );
      return SKPengantarCeraiRujukResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat pengantar minta kartu keluarga
  Future<SPMKartuKeluargaResponseDto> createSuratPermohonanKartuKeluarga(
      SPMKartuKeluargaRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratPermohonanKK,
        data: request.toJson(),
      );
      return SPMKartuKeluargaResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat keterangan izin orang tua
  Future<SKIzinOrangTuaResponseDto> createSuratKeteranganIzinOrangTua(
      SKIzinOrangTuaRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratIzinOrangTua,
        data: request.toJson(),
      );
      return SKIzinOrangTuaResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat pernyataan sporadik
  Future<SPNPenguasaanFisikBidangTanahResponseDto>
  createSuratPernyataanSporadik(
      SPNPenguasaanFisikBidangTanahRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratPernyataanSporadik,
        data: request.toJson(),
      );
      return SPNPenguasaanFisikBidangTanahResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// Membuat surat pengantar minta perubahan KK
  Future<SPMPerubahanKKResponseDto> createSuratPermohonanPerubahanKK(
      SPMPerubahanKKRequestDto request,
      ) async {
    try {
      final response = await _dio.post(
        ApiConstants.suratPerubahanKK,
        data: request.toJson(),
      );
      return SPMPerubahanKKResponseDto.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
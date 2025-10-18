class SKIzinOrangTuaResponseDto {
  final SKIzinOrangTuaDataDto data;

  SKIzinOrangTuaResponseDto({required this.data});

  factory SKIzinOrangTuaResponseDto.fromJson(Map<String, dynamic> json) {
    return SKIzinOrangTuaResponseDto(
      data: SKIzinOrangTuaDataDto.fromJson(json['data']),
    );
  }
}

class SKIzinOrangTuaDataDto {
  final String agama2Id;
  final String agamaId;
  final String alamat;
  final String alamat2;
  final String bagianSuratId;
  final String createdAt;
  final String? deletedAt;
  final String diberiIzin;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final bool isWargaDesa;
  final String keperluan;
  final String kewarganegaraan;
  final String kewarganegaraan2;
  final String kodeBelakang;
  final String kodeDepan;
  final String masaKontrak;
  final String memberiIzin;
  final String nama;
  final String nama2;
  final String namaPerusahaan;
  final String negaraTujuan;
  final String nik;
  final String nik2;
  final String nomorSurat;
  final String nomorSuratDeprecated;
  final String organisasiId;
  final String pekerjaan;
  final String pekerjaan2;
  final String status;
  final String statusPekerjaan;
  final String tanggalLahir;
  final String tanggalLahir2;
  final String tanggalSurat;
  final String tempatLahir;
  final String tempatLahir2;
  final String updatedAt;

  SKIzinOrangTuaDataDto({
    required this.agama2Id,
    required this.agamaId,
    required this.alamat,
    required this.alamat2,
    required this.bagianSuratId,
    required this.createdAt,
    this.deletedAt,
    required this.diberiIzin,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.isWargaDesa,
    required this.keperluan,
    required this.kewarganegaraan,
    required this.kewarganegaraan2,
    required this.kodeBelakang,
    required this.kodeDepan,
    required this.masaKontrak,
    required this.memberiIzin,
    required this.nama,
    required this.nama2,
    required this.namaPerusahaan,
    required this.negaraTujuan,
    required this.nik,
    required this.nik2,
    required this.nomorSurat,
    required this.nomorSuratDeprecated,
    required this.organisasiId,
    required this.pekerjaan,
    required this.pekerjaan2,
    required this.status,
    required this.statusPekerjaan,
    required this.tanggalLahir,
    required this.tanggalLahir2,
    required this.tanggalSurat,
    required this.tempatLahir,
    required this.tempatLahir2,
    required this.updatedAt,
  });

  factory SKIzinOrangTuaDataDto.fromJson(Map<String, dynamic> json) {
    return SKIzinOrangTuaDataDto(
      agama2Id: json['agama_2_id'],
      agamaId: json['agama_id'],
      alamat: json['alamat'],
      alamat2: json['alamat_2'],
      bagianSuratId: json['bagian_surat_id'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diberiIzin: json['diberi_izin'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      isWargaDesa: json['is_warga_desa'],
      keperluan: json['keperluan'],
      kewarganegaraan: json['kewarganegaraan'],
      kewarganegaraan2: json['kewarganegaraan_2'],
      kodeBelakang: json['kode_belakang'],
      kodeDepan: json['kode_depan'],
      masaKontrak: json['masa_kontrak'],
      memberiIzin: json['memberi_izin'],
      nama: json['nama'],
      nama2: json['nama_2'],
      namaPerusahaan: json['nama_perusahaan'],
      negaraTujuan: json['negara_tujuan'],
      nik: json['nik'],
      nik2: json['nik_2'],
      nomorSurat: json['nomor_surat'],
      nomorSuratDeprecated: json['nomor_surat_deprecated'],
      organisasiId: json['organisasi_id'],
      pekerjaan: json['pekerjaan'],
      pekerjaan2: json['pekerjaan_2'],
      status: json['status'],
      statusPekerjaan: json['status_pekerjaan'],
      tanggalLahir: json['tanggal_lahir'],
      tanggalLahir2: json['tanggal_lahir_2'],
      tanggalSurat: json['tanggal_surat'],
      tempatLahir: json['tempat_lahir'],
      tempatLahir2: json['tempat_lahir_2'],
      updatedAt: json['updated_at'],
    );
  }
}

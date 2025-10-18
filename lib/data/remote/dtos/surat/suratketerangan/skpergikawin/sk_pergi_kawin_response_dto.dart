class SKPergiKawinResponseDto {
  final SKPergiKawinDataDto data;

  SKPergiKawinResponseDto({required this.data});

  factory SKPergiKawinResponseDto.fromJson(Map<String, dynamic> json) {
    return SKPergiKawinResponseDto(
      data: SKPergiKawinDataDto.fromJson(json['data']),
    );
  }
}

class SKPergiKawinDataDto {
  final String agamaId;
  final String alamat;
  final String bagianSuratId;
  final String berlakuMulai;
  final String berlakuSampai;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final bool isWargaDesa;
  final String jenisKelamin;
  final String keperluan;
  final String kewarganegaraan;
  final String kodeBelakang;
  final String kodeDepan;
  final String nama;
  final String nik;
  final String nomorSurat;
  final String nomorSuratDeprecated;
  final String organisasiId;
  final String pekerjaan;
  final String status;
  final String statusKawinId;
  final String tanggalLahir;
  final String tanggalSurat;
  final String tempatLahir;
  final String tujuan;
  final String updatedAt;

  SKPergiKawinDataDto({
    required this.agamaId,
    required this.alamat,
    required this.bagianSuratId,
    required this.berlakuMulai,
    required this.berlakuSampai,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.isWargaDesa,
    required this.jenisKelamin,
    required this.keperluan,
    required this.kewarganegaraan,
    required this.kodeBelakang,
    required this.kodeDepan,
    required this.nama,
    required this.nik,
    required this.nomorSurat,
    required this.nomorSuratDeprecated,
    required this.organisasiId,
    required this.pekerjaan,
    required this.status,
    required this.statusKawinId,
    required this.tanggalLahir,
    required this.tanggalSurat,
    required this.tempatLahir,
    required this.tujuan,
    required this.updatedAt,
  });

  factory SKPergiKawinDataDto.fromJson(Map<String, dynamic> json) {
    return SKPergiKawinDataDto(
      agamaId: json['agama_id'],
      alamat: json['alamat'],
      bagianSuratId: json['bagian_surat_id'],
      berlakuMulai: json['berlaku_mulai'],
      berlakuSampai: json['berlaku_sampai'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      isWargaDesa: json['is_warga_desa'],
      jenisKelamin: json['jenis_kelamin'],
      keperluan: json['keperluan'],
      kewarganegaraan: json['kewarganegaraan'],
      kodeBelakang: json['kode_belakang'],
      kodeDepan: json['kode_depan'],
      nama: json['nama'],
      nik: json['nik'],
      nomorSurat: json['nomor_surat'],
      nomorSuratDeprecated: json['nomor_surat_deprecated'],
      organisasiId: json['organisasi_id'],
      pekerjaan: json['pekerjaan'],
      status: json['status'],
      statusKawinId: json['status_kawin_id'],
      tanggalLahir: json['tanggal_lahir'],
      tanggalSurat: json['tanggal_surat'],
      tempatLahir: json['tempat_lahir'],
      tujuan: json['tujuan'],
      updatedAt: json['updated_at'],
    );
  }
}
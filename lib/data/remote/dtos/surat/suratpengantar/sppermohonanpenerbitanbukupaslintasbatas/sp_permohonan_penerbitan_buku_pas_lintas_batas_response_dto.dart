class SPPermohonanPenerbitanBukuPasLintasBatasResponseDto {
  final SPPermohonanPenerbitanBukuPasLintasBatasDataDto data;

  SPPermohonanPenerbitanBukuPasLintasBatasResponseDto({required this.data});

  factory SPPermohonanPenerbitanBukuPasLintasBatasResponseDto.fromJson(
      Map<String, dynamic> json) {
    return SPPermohonanPenerbitanBukuPasLintasBatasResponseDto(
      data: SPPermohonanPenerbitanBukuPasLintasBatasDataDto.fromJson(
          json['data']),
    );
  }
}

class SPPermohonanPenerbitanBukuPasLintasBatasDataDto {
  final String agamaId;
  final String alamat;
  final String? anggotaKeluarga;
  final String bagianSuratId;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final bool isWargaDesa;
  final String jenisKelamin;
  final String kepalaKeluarga;
  final String keperluan;
  final String kewarganegaraan;
  final String kodeBelakang;
  final String kodeDepan;
  final String nama;
  final String nik;
  final String noKk;
  final String nomorSurat;
  final String nomorSuratDeprecated;
  final String organisasiId;
  final String pekerjaan;
  final String status;
  final String statusKawinId;
  final String tanggalLahir;
  final String tanggalSurat;
  final String tempatLahir;
  final String updatedAt;

  SPPermohonanPenerbitanBukuPasLintasBatasDataDto({
    required this.agamaId,
    required this.alamat,
    this.anggotaKeluarga,
    required this.bagianSuratId,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.isWargaDesa,
    required this.jenisKelamin,
    required this.kepalaKeluarga,
    required this.keperluan,
    required this.kewarganegaraan,
    required this.kodeBelakang,
    required this.kodeDepan,
    required this.nama,
    required this.nik,
    required this.noKk,
    required this.nomorSurat,
    required this.nomorSuratDeprecated,
    required this.organisasiId,
    required this.pekerjaan,
    required this.status,
    required this.statusKawinId,
    required this.tanggalLahir,
    required this.tanggalSurat,
    required this.tempatLahir,
    required this.updatedAt,
  });

  factory SPPermohonanPenerbitanBukuPasLintasBatasDataDto.fromJson(
      Map<String, dynamic> json) {
    return SPPermohonanPenerbitanBukuPasLintasBatasDataDto(
      agamaId: json['agama_id'],
      alamat: json['alamat'],
      anggotaKeluarga: json['anggota_keluarga'],
      bagianSuratId: json['bagian_surat_id'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      isWargaDesa: json['is_warga_desa'],
      jenisKelamin: json['jenis_kelamin'],
      kepalaKeluarga: json['kepala_keluarga'],
      keperluan: json['keperluan'],
      kewarganegaraan: json['kewarganegaraan'],
      kodeBelakang: json['kode_belakang'],
      kodeDepan: json['kode_depan'],
      nama: json['nama'],
      nik: json['nik'],
      noKk: json['no_kk'],
      nomorSurat: json['nomor_surat'],
      nomorSuratDeprecated: json['nomor_surat_deprecated'],
      organisasiId: json['organisasi_id'],
      pekerjaan: json['pekerjaan'],
      status: json['status'],
      statusKawinId: json['status_kawin_id'],
      tanggalLahir: json['tanggal_lahir'],
      tanggalSurat: json['tanggal_surat'],
      tempatLahir: json['tempat_lahir'],
      updatedAt: json['updated_at'],
    );
  }
}

class SPMDuplikatSuratNikahResponseDto {
  final SPMDuplikatSuratNikahDataDto data;

  SPMDuplikatSuratNikahResponseDto({required this.data});

  factory SPMDuplikatSuratNikahResponseDto.fromJson(
      Map<String, dynamic> json) {
    return SPMDuplikatSuratNikahResponseDto(
      data: SPMDuplikatSuratNikahDataDto.fromJson(json['data']),
    );
  }
}

class SPMDuplikatSuratNikahDataDto {
  final String agamaId;
  final String alamat;
  final String bagianSuratId;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final String jenisKelamin;
  final String kecamatanKua;
  final String kepalaKeluarga;
  final String keperluan;
  final String kewarganegaraan;
  final String kodeBelakang;
  final String kodeDepan;
  final String nama;
  final String namaPasangan;
  final String nik;
  final String noKk;
  final String nomorSurat;
  final String nomorSuratDeprecated;
  final String organisasiId;
  final String pekerjaan;
  final String pendidikanId;
  final String status;
  final String tanggalLahir;
  final String tanggalNikah;
  final String tanggalSurat;
  final String tempatLahir;
  final String updatedAt;

  SPMDuplikatSuratNikahDataDto({
    required this.agamaId,
    required this.alamat,
    required this.bagianSuratId,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.jenisKelamin,
    required this.kecamatanKua,
    required this.kepalaKeluarga,
    required this.keperluan,
    required this.kewarganegaraan,
    required this.kodeBelakang,
    required this.kodeDepan,
    required this.nama,
    required this.namaPasangan,
    required this.nik,
    required this.noKk,
    required this.nomorSurat,
    required this.nomorSuratDeprecated,
    required this.organisasiId,
    required this.pekerjaan,
    required this.pendidikanId,
    required this.status,
    required this.tanggalLahir,
    required this.tanggalNikah,
    required this.tanggalSurat,
    required this.tempatLahir,
    required this.updatedAt,
  });

  factory SPMDuplikatSuratNikahDataDto.fromJson(Map<String, dynamic> json) {
    return SPMDuplikatSuratNikahDataDto(
      agamaId: json['agama_id'],
      alamat: json['alamat'],
      bagianSuratId: json['bagian_surat_id'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      jenisKelamin: json['jenis_kelamin'],
      kecamatanKua: json['kecamatan_kua'],
      kepalaKeluarga: json['kepala_keluarga'],
      keperluan: json['keperluan'],
      kewarganegaraan: json['kewarganegaraan'],
      kodeBelakang: json['kode_belakang'],
      kodeDepan: json['kode_depan'],
      nama: json['nama'],
      namaPasangan: json['nama_pasangan'],
      nik: json['nik'],
      noKk: json['no_kk'],
      nomorSurat: json['nomor_surat'],
      nomorSuratDeprecated: json['nomor_surat_deprecated'],
      organisasiId: json['organisasi_id'],
      pekerjaan: json['pekerjaan'],
      pendidikanId: json['pendidikan_id'],
      status: json['status'],
      tanggalLahir: json['tanggal_lahir'],
      tanggalNikah: json['tanggal_nikah'],
      tanggalSurat: json['tanggal_surat'],
      tempatLahir: json['tempat_lahir'],
      updatedAt: json['updated_at'],
    );
  }
}
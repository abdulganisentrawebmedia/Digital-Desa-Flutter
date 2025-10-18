class SPCatatanKepolisianResponseDto {
  final SPCatatanKepolisianDataDto data;

  SPCatatanKepolisianResponseDto({required this.data});

  factory SPCatatanKepolisianResponseDto.fromJson(Map<String, dynamic> json) {
    return SPCatatanKepolisianResponseDto(
      data: SPCatatanKepolisianDataDto.fromJson(json['data']),
    );
  }
}

class SPCatatanKepolisianDataDto {
  final String alamat;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final String jenisKelamin;
  final String keperluan;
  final String nama;
  final String nik;
  final String nomorSurat;
  final String organisasiId;
  final String pekerjaan;
  final String status;
  final String tanggalLahir;
  final String tempatLahir;
  final String updatedAt;

  SPCatatanKepolisianDataDto({
    required this.alamat,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.jenisKelamin,
    required this.keperluan,
    required this.nama,
    required this.nik,
    required this.nomorSurat,
    required this.organisasiId,
    required this.pekerjaan,
    required this.status,
    required this.tanggalLahir,
    required this.tempatLahir,
    required this.updatedAt,
  });

  factory SPCatatanKepolisianDataDto.fromJson(Map<String, dynamic> json) {
    return SPCatatanKepolisianDataDto(
      alamat: json['alamat'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      jenisKelamin: json['jenis_kelamin'],
      keperluan: json['keperluan'],
      nama: json['nama'],
      nik: json['nik'],
      nomorSurat: json['nomor_surat'],
      organisasiId: json['organisasi_id'],
      pekerjaan: json['pekerjaan'],
      status: json['status'],
      tanggalLahir: json['tanggal_lahir'],
      tempatLahir: json['tempat_lahir'],
      updatedAt: json['updated_at'],
    );
  }
}
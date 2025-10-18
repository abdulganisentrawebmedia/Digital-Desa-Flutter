class SKJandaDudaResponseDto {
  final SKJandaDudaDataDto data;

  SKJandaDudaResponseDto({required this.data});

  factory SKJandaDudaResponseDto.fromJson(Map<String, dynamic> json) {
    return SKJandaDudaResponseDto(
      data: SKJandaDudaDataDto.fromJson(json['data']),
    );
  }
}

class SKJandaDudaDataDto {
  final String agamaId;
  final String alamat;
  final String createdAt;
  final String dasarPengajuan;
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
  final String nomorPengajuan;
  final String nomorSurat;
  final String organisasiId;
  final String pekerjaan;
  final String penyebab;
  final String status;
  final String tanggalLahir;
  final String tempatLahir;
  final String updatedAt;

  SKJandaDudaDataDto({
    required this.agamaId,
    required this.alamat,
    required this.createdAt,
    required this.dasarPengajuan,
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
    required this.nomorPengajuan,
    required this.nomorSurat,
    required this.organisasiId,
    required this.pekerjaan,
    required this.penyebab,
    required this.status,
    required this.tanggalLahir,
    required this.tempatLahir,
    required this.updatedAt,
  });

  factory SKJandaDudaDataDto.fromJson(Map<String, dynamic> json) {
    return SKJandaDudaDataDto(
      agamaId: json['agama_id'],
      alamat: json['alamat'],
      createdAt: json['created_at'],
      dasarPengajuan: json['dasar_pengajuan'],
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
      nomorPengajuan: json['nomor_pengajuan'],
      nomorSurat: json['nomor_surat'],
      organisasiId: json['organisasi_id'],
      pekerjaan: json['pekerjaan'],
      penyebab: json['penyebab'],
      status: json['status'],
      tanggalLahir: json['tanggal_lahir'],
      tempatLahir: json['tempat_lahir'],
      updatedAt: json['updated_at'],
    );
  }
}
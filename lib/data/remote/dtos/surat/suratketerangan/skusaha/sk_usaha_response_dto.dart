class SKUsahaResponseDto {
  final SKUsahaDataDto data;

  SKUsahaResponseDto({required this.data});

  factory SKUsahaResponseDto.fromJson(Map<String, dynamic> json) {
    return SKUsahaResponseDto(
      data: SKUsahaDataDto.fromJson(json['data']),
    );
  }
}

class SKUsahaDataDto {
  final String alamat;
  final String alamatUsaha;
  final String bidangUsahaId;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final String jenisKelamin;
  final String jenisUsahaId;
  final String keperluan;
  final String nama;
  final String namaUsaha;
  final String nik;
  final String nomorSurat;
  final String npwp;
  final String organisasiId;
  final String pekerjaan;
  final String status;
  final String tanggalLahir;
  final String tempatLahir;
  final String updatedAt;
  final bool wargaDesa;

  SKUsahaDataDto({
    required this.alamat,
    required this.alamatUsaha,
    required this.bidangUsahaId,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.jenisKelamin,
    required this.jenisUsahaId,
    required this.keperluan,
    required this.nama,
    required this.namaUsaha,
    required this.nik,
    required this.nomorSurat,
    required this.npwp,
    required this.organisasiId,
    required this.pekerjaan,
    required this.status,
    required this.tanggalLahir,
    required this.tempatLahir,
    required this.updatedAt,
    required this.wargaDesa,
  });

  factory SKUsahaDataDto.fromJson(Map<String, dynamic> json) {
    return SKUsahaDataDto(
      alamat: json['alamat'],
      alamatUsaha: json['alamat_usaha'],
      bidangUsahaId: json['bidang_usaha_id'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      jenisKelamin: json['jenis_kelamin'],
      jenisUsahaId: json['jenis_usaha_id'],
      keperluan: json['keperluan'],
      nama: json['nama'],
      namaUsaha: json['nama_usaha'],
      nik: json['nik'],
      nomorSurat: json['nomor_surat'],
      npwp: json['npwp'],
      organisasiId: json['organisasi_id'],
      pekerjaan: json['pekerjaan'],
      status: json['status'],
      tanggalLahir: json['tanggal_lahir'],
      tempatLahir: json['tempat_lahir'],
      updatedAt: json['updated_at'],
      wargaDesa: json['warga_desa'],
    );
  }
}
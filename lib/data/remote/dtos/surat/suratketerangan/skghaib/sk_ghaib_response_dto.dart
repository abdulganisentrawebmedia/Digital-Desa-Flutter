class SKGhaibResponseDto {
  final SKGhaibDataDto data;

  SKGhaibResponseDto({required this.data});

  factory SKGhaibResponseDto.fromJson(Map<String, dynamic> json) {
    return SKGhaibResponseDto(
      data: SKGhaibDataDto.fromJson(json['data']),
    );
  }
}

class SKGhaibDataDto {
  final String alamat;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String hilangSejak;
  final String hubunganId;
  final String id;
  final String jenisKelamin;
  final String keperluan;
  final String nama;
  final String namaOrangHilang;
  final String nik;
  final String nomorSurat;
  final String organisasiId;
  final String status;
  final String updatedAt;
  final int usia;

  SKGhaibDataDto({
    required this.alamat,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.hilangSejak,
    required this.hubunganId,
    required this.id,
    required this.jenisKelamin,
    required this.keperluan,
    required this.nama,
    required this.namaOrangHilang,
    required this.nik,
    required this.nomorSurat,
    required this.organisasiId,
    required this.status,
    required this.updatedAt,
    required this.usia,
  });

  factory SKGhaibDataDto.fromJson(Map<String, dynamic> json) {
    return SKGhaibDataDto(
      alamat: json['alamat'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      hilangSejak: json['hilang_sejak'],
      hubunganId: json['hubungan_id'],
      id: json['id'],
      jenisKelamin: json['jenis_kelamin'],
      keperluan: json['keperluan'],
      nama: json['nama'],
      namaOrangHilang: json['nama_orang_hilang'],
      nik: json['nik'],
      nomorSurat: json['nomor_surat'],
      organisasiId: json['organisasi_id'],
      status: json['status'],
      updatedAt: json['updated_at'],
      usia: json['usia'],
    );
  }
}

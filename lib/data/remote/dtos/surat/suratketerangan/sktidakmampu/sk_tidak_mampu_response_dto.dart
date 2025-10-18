class SKTidakMampuResponseDto {
  final SKTidakMampuDataDto data;

  SKTidakMampuResponseDto({required this.data});

  factory SKTidakMampuResponseDto.fromJson(Map<String, dynamic> json) {
    return SKTidakMampuResponseDto(
      data: SKTidakMampuDataDto.fromJson(json['data']),
    );
  }
}

class SKTidakMampuDataDto {
  final String agamaId;
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
  final String statusKawinId;
  final String tanggalLahir;
  final String tempatLahir;
  final String updatedAt;

  SKTidakMampuDataDto({
    required this.agamaId,
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
    required this.statusKawinId,
    required this.tanggalLahir,
    required this.tempatLahir,
    required this.updatedAt,
  });

  factory SKTidakMampuDataDto.fromJson(Map<String, dynamic> json) {
    return SKTidakMampuDataDto(
      agamaId: json['agama_id'],
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
      statusKawinId: json['status_kawin_id'],
      tanggalLahir: json['tanggal_lahir'],
      tempatLahir: json['tempat_lahir'],
      updatedAt: json['updated_at'],
    );
  }
}

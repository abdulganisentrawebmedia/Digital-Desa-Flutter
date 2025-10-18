class SKBedaIdentitasResponseDto {
  final SKBedaIdentitasDataDto data;

  SKBedaIdentitasResponseDto({required this.data});

  factory SKBedaIdentitasResponseDto.fromJson(Map<String, dynamic> json) {
    return SKBedaIdentitasResponseDto(
      data: SKBedaIdentitasDataDto.fromJson(json['data']),
    );
  }
}

class SKBedaIdentitasDataDto {
  final String alamat1;
  final String alamat2;
  final String createdAt;
  final String? deletedAt;
  final String diajukanOlehNik;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final String keperluan;
  final String nama1;
  final String nama2;
  final String nomor1;
  final String nomor2;
  final String nomorSurat;
  final String organisasiId;
  final String perbedaanId;
  final String status;
  final String tanggalLahir1;
  final String tanggalLahir2;
  final String tempatLahir1;
  final String tempatLahir2;
  final String tercantumId;
  final String tercantumId2;
  final String updatedAt;

  SKBedaIdentitasDataDto({
    required this.alamat1,
    required this.alamat2,
    required this.createdAt,
    this.deletedAt,
    required this.diajukanOlehNik,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.keperluan,
    required this.nama1,
    required this.nama2,
    required this.nomor1,
    required this.nomor2,
    required this.nomorSurat,
    required this.organisasiId,
    required this.perbedaanId,
    required this.status,
    required this.tanggalLahir1,
    required this.tanggalLahir2,
    required this.tempatLahir1,
    required this.tempatLahir2,
    required this.tercantumId,
    required this.tercantumId2,
    required this.updatedAt,
  });

  factory SKBedaIdentitasDataDto.fromJson(Map<String, dynamic> json) {
    return SKBedaIdentitasDataDto(
      alamat1: json['alamat_1'],
      alamat2: json['alamat_2'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diajukanOlehNik: json['diajukan_oleh_nik'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      keperluan: json['keperluan'],
      nama1: json['nama_1'],
      nama2: json['nama_2'],
      nomor1: json['nomor_1'],
      nomor2: json['nomor_2'],
      nomorSurat: json['nomor_surat'],
      organisasiId: json['organisasi_id'],
      perbedaanId: json['perbedaan_id'],
      status: json['status'],
      tanggalLahir1: json['tanggal_lahir_1'],
      tanggalLahir2: json['tanggal_lahir_2'],
      tempatLahir1: json['tempat_lahir_1'],
      tempatLahir2: json['tempat_lahir_2'],
      tercantumId: json['tercantum_id'],
      tercantumId2: json['tercantum_id_2'],
      updatedAt: json['updated_at'],
    );
  }
}

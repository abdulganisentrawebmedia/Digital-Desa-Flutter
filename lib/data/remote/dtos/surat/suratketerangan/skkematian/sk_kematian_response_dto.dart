class SKKematianResponseDto {
  final SKKematianDataDto data;

  SKKematianResponseDto({required this.data});

  factory SKKematianResponseDto.fromJson(Map<String, dynamic> json) {
    return SKKematianResponseDto(
      data: SKKematianDataDto.fromJson(json['data']),
    );
  }
}

class SKKematianDataDto {
  final String alamat;
  final String alamatMendiang;
  final String createdAt;
  final String? deletedAt;
  final String diajukanOlehNik;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String hariMeninggal;
  final String hubunganId;
  final String id;
  final String jenisKelaminMendiang;
  final String keperluan;
  final String nama;
  final String namaMendiang;
  final String nikMendiang;
  final String nomorSurat;
  final String organisasiId;
  final String sebabMeninggal;
  final String status;
  final String tanggalLahirMendiang;
  final String tanggalMeninggal;
  final String tempatLahirMendiang;
  final String tempatMeninggal;
  final String updatedAt;

  SKKematianDataDto({
    required this.alamat,
    required this.alamatMendiang,
    required this.createdAt,
    this.deletedAt,
    required this.diajukanOlehNik,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.hariMeninggal,
    required this.hubunganId,
    required this.id,
    required this.jenisKelaminMendiang,
    required this.keperluan,
    required this.nama,
    required this.namaMendiang,
    required this.nikMendiang,
    required this.nomorSurat,
    required this.organisasiId,
    required this.sebabMeninggal,
    required this.status,
    required this.tanggalLahirMendiang,
    required this.tanggalMeninggal,
    required this.tempatLahirMendiang,
    required this.tempatMeninggal,
    required this.updatedAt,
  });

  factory SKKematianDataDto.fromJson(Map<String, dynamic> json) {
    return SKKematianDataDto(
      alamat: json['alamat'],
      alamatMendiang: json['alamat_mendiang'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diajukanOlehNik: json['diajukan_oleh_nik'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      hariMeninggal: json['hari_meninggal'],
      hubunganId: json['hubungan_id'],
      id: json['id'],
      jenisKelaminMendiang: json['jenis_kelamin_mendiang'],
      keperluan: json['keperluan'],
      nama: json['nama'],
      namaMendiang: json['nama_mendiang'],
      nikMendiang: json['nik_mendiang'],
      nomorSurat: json['nomor_surat'],
      organisasiId: json['organisasi_id'],
      sebabMeninggal: json['sebab_meninggal'],
      status: json['status'],
      tanggalLahirMendiang: json['tanggal_lahir_mendiang'],
      tanggalMeninggal: json['tanggal_meninggal'],
      tempatLahirMendiang: json['tempat_lahir_mendiang'],
      tempatMeninggal: json['tempat_meninggal'],
      updatedAt: json['updated_at'],
    );
  }
}

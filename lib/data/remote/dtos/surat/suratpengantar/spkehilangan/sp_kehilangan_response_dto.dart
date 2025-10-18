class SPKehilanganResponseDto {
  final SPKehilanganDataDto data;

  SPKehilanganResponseDto({required this.data});

  factory SPKehilanganResponseDto.fromJson(Map<String, dynamic> json) {
    return SPKehilanganResponseDto(
      data: SPKehilanganDataDto.fromJson(json['data']),
    );
  }
}

class SPKehilanganDataDto {
  final String alamat;
  final String ciri;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final String jenisBarang;
  final String jenisKelamin;
  final String keperluan;
  final String nama;
  final String nik;
  final String nomorSurat;
  final String organisasiId;
  final String pekerjaan;
  final String status;
  final String tanggalLahir;
  final String tempatKehilangan;
  final String tempatLahir;
  final String updatedAt;
  final String waktuKehilangan;

  SPKehilanganDataDto({
    required this.alamat,
    required this.ciri,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.jenisBarang,
    required this.jenisKelamin,
    required this.keperluan,
    required this.nama,
    required this.nik,
    required this.nomorSurat,
    required this.organisasiId,
    required this.pekerjaan,
    required this.status,
    required this.tanggalLahir,
    required this.tempatKehilangan,
    required this.tempatLahir,
    required this.updatedAt,
    required this.waktuKehilangan,
  });

  factory SPKehilanganDataDto.fromJson(Map<String, dynamic> json) {
    return SPKehilanganDataDto(
      alamat: json['alamat'],
      ciri: json['ciri'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      jenisBarang: json['jenis_barang'],
      jenisKelamin: json['jenis_kelamin'],
      keperluan: json['keperluan'],
      nama: json['nama'],
      nik: json['nik'],
      nomorSurat: json['nomor_surat'],
      organisasiId: json['organisasi_id'],
      pekerjaan: json['pekerjaan'],
      status: json['status'],
      tanggalLahir: json['tanggal_lahir'],
      tempatKehilangan: json['tempat_kehilangan'],
      tempatLahir: json['tempat_lahir'],
      updatedAt: json['updated_at'],
      waktuKehilangan: json['waktu_kehilangan'],
    );
  }
}
class SKDomisiliResponseDto {
  final SKDomisiliDataDto data;

  SKDomisiliResponseDto({required this.data});

  factory SKDomisiliResponseDto.fromJson(Map<String, dynamic> json) {
    return SKDomisiliResponseDto(
      data: SKDomisiliDataDto.fromJson(json['data']),
    );
  }
}

class SKDomisiliDataDto {
  final String agamaId;
  final String alamat;
  final String alamatIdentitas;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final String jenisKelamin;
  final int jumlahPengikut;
  final String keperluan;
  final String kewarganegaraan;
  final String nama;
  final String nik;
  final String nomorSurat;
  final String organisasiId;
  final String pekerjaan;
  final String status;
  final String tanggalLahir;
  final String tempatLahir;
  final String updatedAt;
  final bool wargaDesa;

  SKDomisiliDataDto({
    required this.agamaId,
    required this.alamat,
    required this.alamatIdentitas,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.jenisKelamin,
    required this.jumlahPengikut,
    required this.keperluan,
    required this.kewarganegaraan,
    required this.nama,
    required this.nik,
    required this.nomorSurat,
    required this.organisasiId,
    required this.pekerjaan,
    required this.status,
    required this.tanggalLahir,
    required this.tempatLahir,
    required this.updatedAt,
    required this.wargaDesa,
  });

  factory SKDomisiliDataDto.fromJson(Map<String, dynamic> json) {
    return SKDomisiliDataDto(
      agamaId: json['agama_id'],
      alamat: json['alamat'],
      alamatIdentitas: json['alamat_identitas'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      jenisKelamin: json['jenis_kelamin'],
      jumlahPengikut: json['jumlah_pengikut'],
      keperluan: json['keperluan'],
      kewarganegaraan: json['kewarganegaraan'],
      nama: json['nama'],
      nik: json['nik'],
      nomorSurat: json['nomor_surat'],
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
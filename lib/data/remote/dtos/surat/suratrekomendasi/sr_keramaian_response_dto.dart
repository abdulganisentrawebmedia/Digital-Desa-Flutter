class SRKeramaianResponseDto {
  final SRKeramaianDataDto data;

  SRKeramaianResponseDto({required this.data});

  factory SRKeramaianResponseDto.fromJson(Map<String, dynamic> json) {
    return SRKeramaianResponseDto(
      data: SRKeramaianDataDto.fromJson(json['data']),
    );
  }
}

class SRKeramaianDataDto {
  final String alamat;
  final String createdAt;
  final String? deletedAt;
  final String dimulai;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String hari;
  final String id;
  final String jenisKelamin;
  final String kontak;
  final String nama;
  final String namaAcara;
  final String nik;
  final String nomorSurat;
  final String organisasiId;
  final String pekerjaan;
  final String penanggungJawab;
  final String selesai;
  final String status;
  final String tanggal;
  final String tanggalLahir;
  final String tempatAcara;
  final String tempatLahir;
  final String updatedAt;

  SRKeramaianDataDto({
    required this.alamat,
    required this.createdAt,
    this.deletedAt,
    required this.dimulai,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.hari,
    required this.id,
    required this.jenisKelamin,
    required this.kontak,
    required this.nama,
    required this.namaAcara,
    required this.nik,
    required this.nomorSurat,
    required this.organisasiId,
    required this.pekerjaan,
    required this.penanggungJawab,
    required this.selesai,
    required this.status,
    required this.tanggal,
    required this.tanggalLahir,
    required this.tempatAcara,
    required this.tempatLahir,
    required this.updatedAt,
  });

  factory SRKeramaianDataDto.fromJson(Map<String, dynamic> json) {
    return SRKeramaianDataDto(
      alamat: json['alamat'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      dimulai: json['dimulai'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      hari: json['hari'],
      id: json['id'],
      jenisKelamin: json['jenis_kelamin'],
      kontak: json['kontak'],
      nama: json['nama'],
      namaAcara: json['nama_acara'],
      nik: json['nik'],
      nomorSurat: json['nomor_surat'],
      organisasiId: json['organisasi_id'],
      pekerjaan: json['pekerjaan'],
      penanggungJawab: json['penanggung_jawab'],
      selesai: json['selesai'],
      status: json['status'],
      tanggal: json['tanggal'],
      tanggalLahir: json['tanggal_lahir'],
      tempatAcara: json['tempat_acara'],
      tempatLahir: json['tempat_lahir'],
      updatedAt: json['updated_at'],
    );
  }
}
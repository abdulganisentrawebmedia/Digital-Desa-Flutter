class SKBerpergianResponseDto {
  final SKBerpergianDataDto data;

  SKBerpergianResponseDto({required this.data});

  factory SKBerpergianResponseDto.fromJson(Map<String, dynamic> json) {
    return SKBerpergianResponseDto(
      data: SKBerpergianDataDto.fromJson(json['data']),
    );
  }
}

class SKBerpergianDataDto {
  final String alamat;
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
  final int lama;
  final String maksudTujuan;
  final String nama;
  final String nik;
  final String nomorSurat;
  final String organisasiId;
  final String pekerjaan;
  final String satuanLama;
  final String status;
  final String tanggalKeberangkatan;
  final String tanggalLahir;
  final String tempatLahir;
  final String tempatTujuan;
  final String updatedAt;

  SKBerpergianDataDto({
    required this.alamat,
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
    required this.lama,
    required this.maksudTujuan,
    required this.nama,
    required this.nik,
    required this.nomorSurat,
    required this.organisasiId,
    required this.pekerjaan,
    required this.satuanLama,
    required this.status,
    required this.tanggalKeberangkatan,
    required this.tanggalLahir,
    required this.tempatLahir,
    required this.tempatTujuan,
    required this.updatedAt,
  });

  factory SKBerpergianDataDto.fromJson(Map<String, dynamic> json) {
    return SKBerpergianDataDto(
      alamat: json['alamat'],
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
      lama: json['lama'],
      maksudTujuan: json['maksud_tujuan'],
      nama: json['nama'],
      nik: json['nik'],
      nomorSurat: json['nomor_surat'],
      organisasiId: json['organisasi_id'],
      pekerjaan: json['pekerjaan'],
      satuanLama: json['satuan_lama'],
      status: json['status'],
      tanggalKeberangkatan: json['tanggal_keberangkatan'],
      tanggalLahir: json['tanggal_lahir'],
      tempatLahir: json['tempat_lahir'],
      tempatTujuan: json['tempat_tujuan'],
      updatedAt: json['updated_at'],
    );
  }
}

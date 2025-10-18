class SKIzinTidakMasukKerjaResponseDto {
  final SKIzinTidakMasukKerjaDataDto data;

  SKIzinTidakMasukKerjaResponseDto({required this.data});

  factory SKIzinTidakMasukKerjaResponseDto.fromJson(Map<String, dynamic> json) {
    return SKIzinTidakMasukKerjaResponseDto(
      data: SKIzinTidakMasukKerjaDataDto.fromJson(json['data']),
    );
  }
}

class SKIzinTidakMasukKerjaDataDto {
  final String agamaId;
  final String alamat;
  final String alasanIzin;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final String jabatan;
  final String jenisKelamin;
  final String keperluan;
  final int lama;
  final String nama;
  final String namaPerusahaan;
  final String nik;
  final String nomorSurat;
  final String organisasiId;
  final String pekerjaan;
  final String status;
  final String tanggalLahir;
  final String tempatLahir;
  final String terhitungDari;
  final String updatedAt;

  SKIzinTidakMasukKerjaDataDto({
    required this.agamaId,
    required this.alamat,
    required this.alasanIzin,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.jabatan,
    required this.jenisKelamin,
    required this.keperluan,
    required this.lama,
    required this.nama,
    required this.namaPerusahaan,
    required this.nik,
    required this.nomorSurat,
    required this.organisasiId,
    required this.pekerjaan,
    required this.status,
    required this.tanggalLahir,
    required this.tempatLahir,
    required this.terhitungDari,
    required this.updatedAt,
  });

  factory SKIzinTidakMasukKerjaDataDto.fromJson(Map<String, dynamic> json) {
    return SKIzinTidakMasukKerjaDataDto(
      agamaId: json['agama_id'],
      alamat: json['alamat'],
      alasanIzin: json['alasan_izin'],
      createdAt: json['created_at'],
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      id: json['id'],
      jabatan: json['jabatan'],
      jenisKelamin: json['jenis_kelamin'],
      keperluan: json['keperluan'],
      lama: json['lama'],
      nama: json['nama'],
      namaPerusahaan: json['nama_perusahaan'],
      nik: json['nik'],
      nomorSurat: json['nomor_surat'],
      organisasiId: json['organisasi_id'],
      pekerjaan: json['pekerjaan'],
      status: json['status'],
      tanggalLahir: json['tanggal_lahir'],
      tempatLahir: json['tempat_lahir'],
      terhitungDari: json['terhitung_dari'],
      updatedAt: json['updated_at'],
    );
  }
}
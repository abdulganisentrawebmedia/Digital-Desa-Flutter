class SKBiodataWargaRequestDto {
  final String agamaId;
  final String aktaCerai;
  final String aktaKawin;
  final String aktaLahir;
  final String alamat;
  final String? disabilitasId;
  final String golonganDarah;
  final String hubungan;
  final String keperluan;
  final String nama;
  final String namaAyah;
  final String namaIbu;
  final String nik;
  final String nikAyah;
  final String nikIbu;
  final String pekerjaan;
  final String pendidikanId;
  final String status;
  final String tanggalCerai;
  final String tanggalKawin;
  final String tanggalLahir;
  final String tempatLahir;

  SKBiodataWargaRequestDto({
    required this.agamaId,
    required this.aktaCerai,
    required this.aktaKawin,
    required this.aktaLahir,
    required this.alamat,
    this.disabilitasId,
    required this.golonganDarah,
    required this.hubungan,
    required this.keperluan,
    required this.nama,
    required this.namaAyah,
    required this.namaIbu,
    required this.nik,
    required this.nikAyah,
    required this.nikIbu,
    required this.pekerjaan,
    required this.pendidikanId,
    required this.status,
    required this.tanggalCerai,
    required this.tanggalKawin,
    required this.tanggalLahir,
    required this.tempatLahir,
  });

  Map<String, dynamic> toJson() => {
    'agama_id': agamaId,
    'akta_cerai': aktaCerai,
    'akta_kawin': aktaKawin,
    'akta_lahir': aktaLahir,
    'alamat': alamat,
    'disabilitas_id': disabilitasId,
    'golongan_darah': golonganDarah,
    'hubungan': hubungan,
    'keperluan': keperluan,
    'nama': nama,
    'nama_ayah': namaAyah,
    'nama_ibu': namaIbu,
    'nik': nik,
    'nik_ayah': nikAyah,
    'nik_ibu': nikIbu,
    'pekerjaan': pekerjaan,
    'pendidikan_id': pendidikanId,
    'status': status,
    'tanggal_cerai': tanggalCerai,
    'tanggal_kawin': tanggalKawin,
    'tanggal_lahir': tanggalLahir,
    'tempat_lahir': tempatLahir,
  };
}

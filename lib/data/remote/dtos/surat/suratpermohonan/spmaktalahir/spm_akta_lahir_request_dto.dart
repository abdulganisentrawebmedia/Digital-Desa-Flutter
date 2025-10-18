class SPMAktaLahirRequestDto {
  final String alamat;
  final String alamatAnak;
  final String alamatOrangTua;
  final String keperluan;
  final String nama;
  final String namaAnak;
  final String namaAyah;
  final String namaIbu;
  final String nik;
  final String nikAyah;
  final String nikIbu;
  final String pekerjaan;
  final String tanggalLahir;
  final String tanggalLahirAnak;
  final String tempatLahir;
  final String tempatLahirAnak;

  SPMAktaLahirRequestDto({
    required this.alamat,
    required this.alamatAnak,
    required this.alamatOrangTua,
    required this.keperluan,
    required this.nama,
    required this.namaAnak,
    required this.namaAyah,
    required this.namaIbu,
    required this.nik,
    required this.nikAyah,
    required this.nikIbu,
    required this.pekerjaan,
    required this.tanggalLahir,
    required this.tanggalLahirAnak,
    required this.tempatLahir,
    required this.tempatLahirAnak,
  });

  Map<String, dynamic> toJson() => {
    'alamat': alamat,
    'alamat_anak': alamatAnak,
    'alamat_orang_tua': alamatOrangTua,
    'keperluan': keperluan,
    'nama': nama,
    'nama_anak': namaAnak,
    'nama_ayah': namaAyah,
    'nama_ibu': namaIbu,
    'nik': nik,
    'nik_ayah': nikAyah,
    'nik_ibu': nikIbu,
    'pekerjaan': pekerjaan,
    'tanggal_lahir': tanggalLahir,
    'tanggal_lahir_anak': tanggalLahirAnak,
    'tempat_lahir': tempatLahir,
    'tempat_lahir_anak': tempatLahirAnak,
  };
}

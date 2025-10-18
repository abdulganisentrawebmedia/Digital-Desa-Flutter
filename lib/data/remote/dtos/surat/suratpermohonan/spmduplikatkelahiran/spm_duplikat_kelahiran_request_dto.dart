class SPMDuplikatKelahiranRequestDto {
  final String agamaIdAnak;
  final String alamat;
  final String alamatAnak;
  final String alamatAyah;
  final String alamatIbu;
  final String jenisKelaminAnak;
  final String keperluan;
  final String nama;
  final String namaAnak;
  final String namaAyah;
  final String namaIbu;
  final String nik;
  final String nikAnak;
  final String nikAyah;
  final String nikIbu;
  final String pekerjaan;
  final String pekerjaanAyah;
  final String pekerjaanIbu;
  final String tanggalLahir;
  final String tanggalLahirAnak;
  final String tempatLahir;
  final String tempatLahirAnak;

  SPMDuplikatKelahiranRequestDto({
    required this.agamaIdAnak,
    required this.alamat,
    required this.alamatAnak,
    required this.alamatAyah,
    required this.alamatIbu,
    required this.jenisKelaminAnak,
    required this.keperluan,
    required this.nama,
    required this.namaAnak,
    required this.namaAyah,
    required this.namaIbu,
    required this.nik,
    required this.nikAnak,
    required this.nikAyah,
    required this.nikIbu,
    required this.pekerjaan,
    required this.pekerjaanAyah,
    required this.pekerjaanIbu,
    required this.tanggalLahir,
    required this.tanggalLahirAnak,
    required this.tempatLahir,
    required this.tempatLahirAnak,
  });

  Map<String, dynamic> toJson() => {
    'agama_id_anak': agamaIdAnak,
    'alamat': alamat,
    'alamat_anak': alamatAnak,
    'alamat_ayah': alamatAyah,
    'alamat_ibu': alamatIbu,
    'jenis_kelamin_anak': jenisKelaminAnak,
    'keperluan': keperluan,
    'nama': nama,
    'nama_anak': namaAnak,
    'nama_ayah': namaAyah,
    'nama_ibu': namaIbu,
    'nik': nik,
    'nik_anak': nikAnak,
    'nik_ayah': nikAyah,
    'nik_ibu': nikIbu,
    'pekerjaan': pekerjaan,
    'pekerjaan_ayah': pekerjaanAyah,
    'pekerjaan_ibu': pekerjaanIbu,
    'tanggal_lahir': tanggalLahir,
    'tanggal_lahir_anak': tanggalLahirAnak,
    'tempat_lahir': tempatLahir,
    'tempat_lahir_anak': tempatLahirAnak,
  };
}
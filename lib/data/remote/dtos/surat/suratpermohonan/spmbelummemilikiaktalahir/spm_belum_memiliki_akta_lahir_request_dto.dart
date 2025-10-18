class SPMBelumMemilikiAktaLahirRequestDto {
  final String alamat;
  final String jenisKelamin;
  final String nama;
  final String namaAyah;
  final String namaIbu;
  final String nik;
  final String nikAyah;
  final String nikIbu;
  final String tanggalLahir;
  final String tempatLahir;

  SPMBelumMemilikiAktaLahirRequestDto({
    required this.alamat,
    required this.jenisKelamin,
    required this.nama,
    required this.namaAyah,
    required this.namaIbu,
    required this.nik,
    required this.nikAyah,
    required this.nikIbu,
    required this.tanggalLahir,
    required this.tempatLahir,
  });

  Map<String, dynamic> toJson() => {
    'alamat': alamat,
    'jenis_kelamin': jenisKelamin,
    'nama': nama,
    'nama_ayah': namaAyah,
    'nama_ibu': namaIbu,
    'nik': nik,
    'nik_ayah': nikAyah,
    'nik_ibu': nikIbu,
    'tanggal_lahir': tanggalLahir,
    'tempat_lahir': tempatLahir,
  };
}
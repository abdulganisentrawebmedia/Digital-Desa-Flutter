class SKKelahiranRequestDto {
  final String alamatAyah;
  final String alamatIbu;
  final int anakKe;
  final String disahkanOleh;
  final String jamLahir;
  final String jenisKelamin;
  final String keperluan;
  final String nama;
  final String namaAyah;
  final String namaIbu;
  final String nikAyah;
  final String nikIbu;
  final String tanggalLahir;
  final String tanggalLahirAyah;
  final String tanggalLahirIbu;
  final String tempatLahir;
  final String tempatLahirAyah;
  final String tempatLahirIbu;

  SKKelahiranRequestDto({
    required this.alamatAyah,
    required this.alamatIbu,
    required this.anakKe,
    required this.disahkanOleh,
    required this.jamLahir,
    required this.jenisKelamin,
    required this.keperluan,
    required this.nama,
    required this.namaAyah,
    required this.namaIbu,
    required this.nikAyah,
    required this.nikIbu,
    required this.tanggalLahir,
    required this.tanggalLahirAyah,
    required this.tanggalLahirIbu,
    required this.tempatLahir,
    required this.tempatLahirAyah,
    required this.tempatLahirIbu,
  });

  Map<String, dynamic> toJson() => {
    'alamat_ayah': alamatAyah,
    'alamat_ibu': alamatIbu,
    'anak_ke': anakKe,
    'disahkan_oleh': disahkanOleh,
    'jam_lahir': jamLahir,
    'jenis_kelamin': jenisKelamin,
    'keperluan': keperluan,
    'nama': nama,
    'nama_ayah': namaAyah,
    'nama_ibu': namaIbu,
    'nik_ayah': nikAyah,
    'nik_ibu': nikIbu,
    'tanggal_lahir': tanggalLahir,
    'tanggal_lahir_ayah': tanggalLahirAyah,
    'tanggal_lahir_ibu': tanggalLahirIbu,
    'tempat_lahir': tempatLahir,
    'tempat_lahir_ayah': tempatLahirAyah,
    'tempat_lahir_ibu': tempatLahirIbu,
  };
}

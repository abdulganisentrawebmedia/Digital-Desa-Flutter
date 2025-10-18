class SKPengantarCeraiRujukRequestDto {
  final String agamaId;
  final String agamaIdPasangan;
  final String alamat;
  final String alamatPasangan;
  final String keperluan;
  final String kewarganegaraan;
  final String kewarganegaraanPasangan;
  final String nama;
  final String namaAyah;
  final String namaAyahPasangan;
  final String namaPasangan;
  final String nik;
  final String nikAyah;
  final String nikAyahPasangan;
  final String nikPasangan;
  final String pekerjaan;
  final String pekerjaanPasangan;
  final String tanggalLahir;
  final String tanggalLahirPasangan;
  final String tempatLahir;
  final String tempatLahirPasangan;

  SKPengantarCeraiRujukRequestDto({
    required this.agamaId,
    required this.agamaIdPasangan,
    required this.alamat,
    required this.alamatPasangan,
    required this.keperluan,
    required this.kewarganegaraan,
    required this.kewarganegaraanPasangan,
    required this.nama,
    required this.namaAyah,
    required this.namaAyahPasangan,
    required this.namaPasangan,
    required this.nik,
    required this.nikAyah,
    required this.nikAyahPasangan,
    required this.nikPasangan,
    required this.pekerjaan,
    required this.pekerjaanPasangan,
    required this.tanggalLahir,
    required this.tanggalLahirPasangan,
    required this.tempatLahir,
    required this.tempatLahirPasangan,
  });

  Map<String, dynamic> toJson() => {
    'agama_id': agamaId,
    'agama_id_pasangan': agamaIdPasangan,
    'alamat': alamat,
    'alamat_pasangan': alamatPasangan,
    'keperluan': keperluan,
    'kewarganegaraan': kewarganegaraan,
    'kewarganegaraan_pasangan': kewarganegaraanPasangan,
    'nama': nama,
    'nama_ayah': namaAyah,
    'nama_ayah_pasangan': namaAyahPasangan,
    'nama_pasangan': namaPasangan,
    'nik': nik,
    'nik_ayah': nikAyah,
    'nik_ayah_pasangan': nikAyahPasangan,
    'nik_pasangan': nikPasangan,
    'pekerjaan': pekerjaan,
    'pekerjaan_pasangan': pekerjaanPasangan,
    'tanggal_lahir': tanggalLahir,
    'tanggal_lahir_pasangan': tanggalLahirPasangan,
    'tempat_lahir': tempatLahir,
    'tempat_lahir_pasangan': tempatLahirPasangan,
  };
}

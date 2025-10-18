class SKLahirMatiRequestDto {
  final String agamaIbuId;
  final String alamatIbu;
  final String hubunganId;
  final String keperluan;
  final String kewarganegaraanIbuId;
  final String lamaDikandung;
  final String nama;
  final String namaIbu;
  final String nik;
  final String nikIbu;
  final String pekerjaanIbu;
  final String tanggalLahirIbu;
  final String tanggalMeninggal;
  final String tempatLahirIbu;
  final String tempatLahir;
  final String tempatMeninggal;

  SKLahirMatiRequestDto({
    required this.agamaIbuId,
    required this.alamatIbu,
    required this.hubunganId,
    required this.keperluan,
    required this.kewarganegaraanIbuId,
    required this.lamaDikandung,
    required this.nama,
    required this.namaIbu,
    required this.nik,
    required this.nikIbu,
    required this.pekerjaanIbu,
    required this.tanggalLahirIbu,
    required this.tanggalMeninggal,
    required this.tempatLahirIbu,
    required this.tempatLahir,
    required this.tempatMeninggal,
  });

  Map<String, dynamic> toJson() => {
    'agama_ibu_id': agamaIbuId,
    'alamat_ibu': alamatIbu,
    'hubungan_id': hubunganId,
    'keperluan': keperluan,
    'kewarganegaraan_ibu_id': kewarganegaraanIbuId,
    'lama_dikandung': lamaDikandung,
    'nama': nama,
    'nama_ibu': namaIbu,
    'nik': nik,
    'nik_ibu': nikIbu,
    'pekerjaan_ibu': pekerjaanIbu,
    'tanggal_lahir_ibu': tanggalLahirIbu,
    'tanggal_meninggal': tanggalMeninggal,
    'tempat_lahir_ibu': tempatLahirIbu,
    'tempat_lahir': tempatLahir,
    'tempat_meninggal': tempatMeninggal,
  };
}

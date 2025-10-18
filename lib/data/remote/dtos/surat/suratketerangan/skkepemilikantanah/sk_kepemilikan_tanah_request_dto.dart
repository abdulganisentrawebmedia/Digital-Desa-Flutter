class SKKepemilikanTanahRequestDto {
  final String alamat;
  final String asalKepemilikanTanah;
  final String atasNama;
  final String batasBarat;
  final String batasSelatan;
  final String batasTimur;
  final String batasUtara;
  final String buktiKepemilikanTanah;
  final String buktiKepemilikanTanahTanah;
  final String jenisKelamin;
  final String jenisTanah;
  final String keperluan;
  final String luasTanah;
  final String nama;
  final String nik;
  final String nomorBuktiKepemilikan;
  final String pekerjaan;
  final String tanggalLahir;
  final String tempatLahir;

  SKKepemilikanTanahRequestDto({
    required this.alamat,
    required this.asalKepemilikanTanah,
    required this.atasNama,
    required this.batasBarat,
    required this.batasSelatan,
    required this.batasTimur,
    required this.batasUtara,
    required this.buktiKepemilikanTanah,
    required this.buktiKepemilikanTanahTanah,
    required this.jenisKelamin,
    required this.jenisTanah,
    required this.keperluan,
    required this.luasTanah,
    required this.nama,
    required this.nik,
    required this.nomorBuktiKepemilikan,
    required this.pekerjaan,
    required this.tanggalLahir,
    required this.tempatLahir,
  });

  Map<String, dynamic> toJson() => {
    'alamat': alamat,
    'asal_kepemilikan_tanah': asalKepemilikanTanah,
    'atas_nama': atasNama,
    'batas_barat': batasBarat,
    'batas_selatan': batasSelatan,
    'batas_timur': batasTimur,
    'batas_utara': batasUtara,
    'bukti_kepemilikan_tanah': buktiKepemilikanTanah,
    'bukti_kepemilikan_tanah_tanah': buktiKepemilikanTanahTanah,
    'jenis_kelamin': jenisKelamin,
    'jenis_tanah': jenisTanah,
    'keperluan': keperluan,
    'luas_tanah': luasTanah,
    'nama': nama,
    'nik': nik,
    'nomor_bukti_kepemilikan': nomorBuktiKepemilikan,
    'pekerjaan': pekerjaan,
    'tanggal_lahir': tanggalLahir,
    'tempat_lahir': tempatLahir,
  };
}

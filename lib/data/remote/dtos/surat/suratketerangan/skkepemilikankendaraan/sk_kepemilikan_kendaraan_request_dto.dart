class SKKepemilikanKendaraanRequestDto {
  final String alamat;
  final String atasNama;
  final String bahanBakar;
  final String isiSilinder;
  final String jenisKelamin;
  final String keperluan;
  final String merk;
  final String nama;
  final String nik;
  final String nomorBpkb;
  final String nomorMesin;
  final String nomorPolisi;
  final String nomorRangka;
  final String pekerjaan;
  final String tahunPembuatan;
  final String tanggalLahir;
  final String tempatLahir;
  final String warna;

  SKKepemilikanKendaraanRequestDto({
    required this.alamat,
    required this.atasNama,
    required this.bahanBakar,
    required this.isiSilinder,
    required this.jenisKelamin,
    required this.keperluan,
    required this.merk,
    required this.nama,
    required this.nik,
    required this.nomorBpkb,
    required this.nomorMesin,
    required this.nomorPolisi,
    required this.nomorRangka,
    required this.pekerjaan,
    required this.tahunPembuatan,
    required this.tanggalLahir,
    required this.tempatLahir,
    required this.warna,
  });

  Map<String, dynamic> toJson() => {
    'alamat': alamat,
    'atas_nama': atasNama,
    'bahan_bakar': bahanBakar,
    'isi_silinder': isiSilinder,
    'jenis_kelamin': jenisKelamin,
    'keperluan': keperluan,
    'merk': merk,
    'nama': nama,
    'nik': nik,
    'nomor_bpkb': nomorBpkb,
    'nomor_mesin': nomorMesin,
    'nomor_polisi': nomorPolisi,
    'nomor_rangka': nomorRangka,
    'pekerjaan': pekerjaan,
    'tahun_pembuatan': tahunPembuatan,
    'tanggal_lahir': tanggalLahir,
    'tempat_lahir': tempatLahir,
    'warna': warna,
  };
}
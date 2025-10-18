class SKBerpergianRequestDto {
  final String alamat;
  final String disahkanOleh;
  final String jenisKelamin;
  final int jumlahPengikut;
  final String keperluan;
  final int lama;
  final String maksudTujuan;
  final String nama;
  final String nik;
  final String pekerjaan;
  final String satuanLama;
  final String tanggalKeberangkatan;
  final String tanggalLahir;
  final String tempatLahir;
  final String tempatTujuan;

  SKBerpergianRequestDto({
    required this.alamat,
    required this.disahkanOleh,
    required this.jenisKelamin,
    required this.jumlahPengikut,
    required this.keperluan,
    required this.lama,
    required this.maksudTujuan,
    required this.nama,
    required this.nik,
    required this.pekerjaan,
    required this.satuanLama,
    required this.tanggalKeberangkatan,
    required this.tanggalLahir,
    required this.tempatLahir,
    required this.tempatTujuan,
  });

  Map<String, dynamic> toJson() => {
    'alamat': alamat,
    'disahkan_oleh': disahkanOleh,
    'jenis_kelamin': jenisKelamin,
    'jumlah_pengikut': jumlahPengikut,
    'keperluan': keperluan,
    'lama': lama,
    'maksud_tujuan': maksudTujuan,
    'nama': nama,
    'nik': nik,
    'pekerjaan': pekerjaan,
    'satuan_lama': satuanLama,
    'tanggal_keberangkatan': tanggalKeberangkatan,
    'tanggal_lahir': tanggalLahir,
    'tempat_lahir': tempatLahir,
    'tempat_tujuan': tempatTujuan,
  };
}
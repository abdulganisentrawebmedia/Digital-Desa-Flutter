class SKGhaibRequestDto {
  final String alamat;
  final String disahkanOleh;
  final String hilangSejak;
  final String hubunganId;
  final String jenisKelamin;
  final String keperluan;
  final String nama;
  final String namaOrangHilang;
  final String nik;
  final int usia;

  SKGhaibRequestDto({
    required this.alamat,
    required this.disahkanOleh,
    required this.hilangSejak,
    required this.hubunganId,
    required this.jenisKelamin,
    required this.keperluan,
    required this.nama,
    required this.namaOrangHilang,
    required this.nik,
    required this.usia,
  });

  Map<String, dynamic> toJson() => {
    'alamat': alamat,
    'disahkan_oleh': disahkanOleh,
    'hilang_sejak': hilangSejak,
    'hubungan_id': hubunganId,
    'jenis_kelamin': jenisKelamin,
    'keperluan': keperluan,
    'nama': nama,
    'nama_orang_hilang': namaOrangHilang,
    'nik': nik,
    'usia': usia,
  };
}
class SKResiKTPSementaraRequestDto {
  final String agamaId;
  final String alamat;
  final String disahkanOleh;
  final String jenisKelamin;
  final String keperluan;
  final String nama;
  final String nik;
  final String pekerjaan;
  final String tanggalLahir;
  final String tempatLahir;

  SKResiKTPSementaraRequestDto({
    required this.agamaId,
    required this.alamat,
    required this.disahkanOleh,
    required this.jenisKelamin,
    required this.keperluan,
    required this.nama,
    required this.nik,
    required this.pekerjaan,
    required this.tanggalLahir,
    required this.tempatLahir,
  });

  Map<String, dynamic> toJson() => {
    'agama_id': agamaId,
    'alamat': alamat,
    'disahkan_oleh': disahkanOleh,
    'jenis_kelamin': jenisKelamin,
    'keperluan': keperluan,
    'nama': nama,
    'nik': nik,
    'pekerjaan': pekerjaan,
    'tanggal_lahir': tanggalLahir,
    'tempat_lahir': tempatLahir,
  };
}
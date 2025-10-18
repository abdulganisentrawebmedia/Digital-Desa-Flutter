class SKKTPDalamProsesRequestDto {
  final String agamaId;
  final String alamat;
  final String jenisKelamin;
  final String keperluan;
  final String kewarganegaraan;
  final String nama;
  final String nik;
  final String pekerjaan;
  final String statusKawinId;
  final String tanggalLahir;
  final String tempatLahir;

  SKKTPDalamProsesRequestDto({
    required this.agamaId,
    required this.alamat,
    required this.jenisKelamin,
    required this.keperluan,
    required this.kewarganegaraan,
    required this.nama,
    required this.nik,
    required this.pekerjaan,
    required this.statusKawinId,
    required this.tanggalLahir,
    required this.tempatLahir,
  });

  Map<String, dynamic> toJson() => {
    'agama_id': agamaId,
    'alamat': alamat,
    'jenis_kelamin': jenisKelamin,
    'keperluan': keperluan,
    'kewarganegaraan': kewarganegaraan,
    'nama': nama,
    'nik': nik,
    'pekerjaan': pekerjaan,
    'status_kawin_id': statusKawinId,
    'tanggal_lahir': tanggalLahir,
    'tempat_lahir': tempatLahir,
  };
}
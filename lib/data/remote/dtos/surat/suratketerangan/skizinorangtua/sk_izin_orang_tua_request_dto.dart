class SKIzinOrangTuaRequestDto {
  final String agama2Id;
  final String agamaId;
  final String alamat;
  final String alamat2;
  final String diberiIzin;
  final String keperluan;
  final String kewarganegaraan;
  final String kewarganegaraan2;
  final String masaKontrak;
  final String memberiIzin;
  final String nama;
  final String nama2;
  final String namaPerusahaan;
  final String negaraTujuan;
  final String nik;
  final String nik2;
  final String pekerjaan;
  final String pekerjaan2;
  final String statusPekerjaan;
  final String tanggalLahir;
  final String tanggalLahir2;
  final String tempatLahir;
  final String tempatLahir2;

  SKIzinOrangTuaRequestDto({
    required this.agama2Id,
    required this.agamaId,
    required this.alamat,
    required this.alamat2,
    required this.diberiIzin,
    required this.keperluan,
    required this.kewarganegaraan,
    required this.kewarganegaraan2,
    required this.masaKontrak,
    required this.memberiIzin,
    required this.nama,
    required this.nama2,
    required this.namaPerusahaan,
    required this.negaraTujuan,
    required this.nik,
    required this.nik2,
    required this.pekerjaan,
    required this.pekerjaan2,
    required this.statusPekerjaan,
    required this.tanggalLahir,
    required this.tanggalLahir2,
    required this.tempatLahir,
    required this.tempatLahir2,
  });

  Map<String, dynamic> toJson() => {
    'agama_2_id': agama2Id,
    'agama_id': agamaId,
    'alamat': alamat,
    'alamat_2': alamat2,
    'diberi_izin': diberiIzin,
    'keperluan': keperluan,
    'kewarganegaraan': kewarganegaraan,
    'kewarganegaraan_2': kewarganegaraan2,
    'masa_kontrak': masaKontrak,
    'memberi_izin': memberiIzin,
    'nama': nama,
    'nama_2': nama2,
    'nama_perusahaan': namaPerusahaan,
    'negara_tujuan': negaraTujuan,
    'nik': nik,
    'nik_2': nik2,
    'pekerjaan': pekerjaan,
    'pekerjaan_2': pekerjaan2,
    'status_pekerjaan': statusPekerjaan,
    'tanggal_lahir': tanggalLahir,
    'tanggal_lahir_2': tanggalLahir2,
    'tempat_lahir': tempatLahir,
    'tempat_lahir_2': tempatLahir2,
  };
}

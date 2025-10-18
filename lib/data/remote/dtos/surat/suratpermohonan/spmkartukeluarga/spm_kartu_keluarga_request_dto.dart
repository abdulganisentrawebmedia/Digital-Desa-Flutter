class SPMKartuKeluargaRequestDto {
  final String agamaId;
  final String alamat;
  final String alasanPermohonan;
  final String jenisKelamin;
  final String keperluan;
  final String kewarganegaraan;
  final String nama;
  final String nik;
  final String noKk;
  final String pekerjaan;
  final String tanggalLahir;
  final String tempatLahir;

  SPMKartuKeluargaRequestDto({
    required this.agamaId,
    required this.alamat,
    required this.alasanPermohonan,
    required this.jenisKelamin,
    required this.keperluan,
    required this.kewarganegaraan,
    required this.nama,
    required this.nik,
    required this.noKk,
    required this.pekerjaan,
    required this.tanggalLahir,
    required this.tempatLahir,
  });

  Map<String, dynamic> toJson() => {
    'agama_id': agamaId,
    'alamat': alamat,
    'alasan_permohonan': alasanPermohonan,
    'jenis_kelamin': jenisKelamin,
    'keperluan': keperluan,
    'kewarganegaraan': kewarganegaraan,
    'nama': nama,
    'nik': nik,
    'no_kk': noKk,
    'pekerjaan': pekerjaan,
    'tanggal_lahir': tanggalLahir,
    'tempat_lahir': tempatLahir,
  };
}
class SKJandaDudaRequestDto {
  final String agamaId;
  final String alamat;
  final String dasarPengajuan;
  final String disahkanOleh;
  final String jenisKelamin;
  final String keperluan;
  final String nama;
  final String nik;
  final String nomorPengajuan;
  final String pekerjaan;
  final String penyebab;
  final String tanggalLahir;
  final String tempatLahir;

  SKJandaDudaRequestDto({
    required this.agamaId,
    required this.alamat,
    required this.dasarPengajuan,
    required this.disahkanOleh,
    required this.jenisKelamin,
    required this.keperluan,
    required this.nama,
    required this.nik,
    required this.nomorPengajuan,
    required this.pekerjaan,
    required this.penyebab,
    required this.tanggalLahir,
    required this.tempatLahir,
  });

  Map<String, dynamic> toJson() => {
    'agama_id': agamaId,
    'alamat': alamat,
    'dasar_pengajuan': dasarPengajuan,
    'disahkan_oleh': disahkanOleh,
    'jenis_kelamin': jenisKelamin,
    'keperluan': keperluan,
    'nama': nama,
    'nik': nik,
    'nomor_pengajuan': nomorPengajuan,
    'pekerjaan': pekerjaan,
    'penyebab': penyebab,
    'tanggal_lahir': tanggalLahir,
    'tempat_lahir': tempatLahir,
  };
}

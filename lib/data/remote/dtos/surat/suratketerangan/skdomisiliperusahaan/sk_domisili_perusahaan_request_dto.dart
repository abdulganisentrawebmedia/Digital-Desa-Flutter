class SKDomisiliPerusahaanRequestDto {
  final String agamaId;
  final String alamat;
  final String alamatPerusahaan;
  final String bidangUsahaId;
  final String jenisKelamin;
  final String jenisUsahaId;
  final String jumlahKaryawan;
  final String keperluan;
  final int luasBangunan;
  final int? luasTanah;
  final String nama;
  final String namaPerusahaan;
  final String nib;
  final String nik;
  final String nomorAktaPendirian;
  final String npwp;
  final String pekerjaan;
  final String peruntukanBangunan;
  final String statusKepemilikanBangunan;
  final String tanggalLahir;
  final String tempatLahir;

  SKDomisiliPerusahaanRequestDto({
    required this.agamaId,
    required this.alamat,
    required this.alamatPerusahaan,
    required this.bidangUsahaId,
    required this.jenisKelamin,
    required this.jenisUsahaId,
    required this.jumlahKaryawan,
    required this.keperluan,
    required this.luasBangunan,
    this.luasTanah,
    required this.nama,
    required this.namaPerusahaan,
    required this.nib,
    required this.nik,
    required this.nomorAktaPendirian,
    required this.npwp,
    required this.pekerjaan,
    required this.peruntukanBangunan,
    required this.statusKepemilikanBangunan,
    required this.tanggalLahir,
    required this.tempatLahir,
  });

  Map<String, dynamic> toJson() => {
    'agama_id': agamaId,
    'alamat': alamat,
    'alamat_perusahaan': alamatPerusahaan,
    'bidang_usaha_id': bidangUsahaId,
    'jenis_kelamin': jenisKelamin,
    'jenis_usaha_id': jenisUsahaId,
    'jumlah_karyawan': jumlahKaryawan,
    'keperluan': keperluan,
    'luas_bangunan': luasBangunan,
    'luas_tanah': luasTanah,
    'nama': nama,
    'nama_perusahaan': namaPerusahaan,
    'nib': nib,
    'nik': nik,
    'nomor_akta_pendirian': nomorAktaPendirian,
    'npwp': npwp,
    'pekerjaan': pekerjaan,
    'peruntukan_bangunan': peruntukanBangunan,
    'status_kepemilikan_bangunan': statusKepemilikanBangunan,
    'tanggal_lahir': tanggalLahir,
    'tempat_lahir': tempatLahir,
  };
}
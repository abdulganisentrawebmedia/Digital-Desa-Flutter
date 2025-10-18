class SPNPenguasaanFisikBidangTanahRequestDto {
  final String alamat;
  final String alamat1;
  final String alamat2;
  final String batasBarat;
  final String batasSelatan;
  final String batasTimur;
  final String batasUtara;
  final String desa;
  final String dipergunakan;
  final String diperolehDari;
  final String diperolehDengan;
  final String diperolehSejak;
  final bool isSaksi1WargaDesa;
  final bool isSaksi2WargaDesa;
  final String jalan;
  final String kabupaten;
  final String kecamatan;
  final String keperluan;
  final String luasTanah;
  final String nama1;
  final String nama2;
  final String namaPemohon;
  final String nib;
  final String nik1;
  final String nik2;
  final String nikPemohon;
  final String pekerjaan;
  final String pekerjaan1;
  final String pekerjaan2;
  final String rtRw;
  final String statusTanah;
  final String tanggalLahirPemohon;
  final String tempatLahirPemohon;

  SPNPenguasaanFisikBidangTanahRequestDto({
    required this.alamat,
    required this.alamat1,
    required this.alamat2,
    required this.batasBarat,
    required this.batasSelatan,
    required this.batasTimur,
    required this.batasUtara,
    required this.desa,
    required this.dipergunakan,
    required this.diperolehDari,
    required this.diperolehDengan,
    required this.diperolehSejak,
    required this.isSaksi1WargaDesa,
    required this.isSaksi2WargaDesa,
    required this.jalan,
    required this.kabupaten,
    required this.kecamatan,
    required this.keperluan,
    required this.luasTanah,
    required this.nama1,
    required this.nama2,
    required this.namaPemohon,
    required this.nib,
    required this.nik1,
    required this.nik2,
    required this.nikPemohon,
    required this.pekerjaan,
    required this.pekerjaan1,
    required this.pekerjaan2,
    required this.rtRw,
    required this.statusTanah,
    required this.tanggalLahirPemohon,
    required this.tempatLahirPemohon,
  });

  Map<String, dynamic> toJson() => {
    "alamat": alamat,
    "alamat_1": alamat1,
    "alamat_2": alamat2,
    "batas_barat": batasBarat,
    "batas_selatan": batasSelatan,
    "batas_timur": batasTimur,
    "batas_utara": batasUtara,
    "desa": desa,
    "dipergunakan": dipergunakan,
    "diperoleh_dari": diperolehDari,
    "diperoleh_dengan": diperolehDengan,
    "diperoleh_sejak": diperolehSejak,
    "is_saksi1_warga_desa": isSaksi1WargaDesa,
    "is_saksi2_warga_desa": isSaksi2WargaDesa,
    "jalan": jalan,
    "kabupaten": kabupaten,
    "kecamatan": kecamatan,
    "keperluan": keperluan,
    "luas_tanah": luasTanah,
    "nama_1": nama1,
    "nama_2": nama2,
    "nama_pemohon": namaPemohon,
    "nib": nib,
    "nik_1": nik1,
    "nik_2": nik2,
    "nik_pemohon": nikPemohon,
    "pekerjaan": pekerjaan,
    "pekerjaan_1": pekerjaan1,
    "pekerjaan_2": pekerjaan2,
    "rt_rw": rtRw,
    "status_tanah": statusTanah,
    "tanggal_lahir_pemohon": tanggalLahirPemohon,
    "tempat_lahir_pemohon": tempatLahirPemohon,
  };
}

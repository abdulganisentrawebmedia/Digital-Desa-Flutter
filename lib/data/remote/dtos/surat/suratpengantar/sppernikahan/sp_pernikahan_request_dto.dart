class SPPernikahanRequestDto {
  final String agamaAyahIstriId;
  final String agamaAyahSuamiId;
  final String agamaIbuIstriId;
  final String agamaIbuSuamiId;
  final String agamaIstriId;
  final String agamaSuamiId;
  final String alamatAyahIstri;
  final String alamatAyahSuami;
  final String alamatIbuIstri;
  final String alamatIbuSuami;
  final String alamatIstri;
  final String alamatSuami;
  final String disahkanOleh;
  final String hari;
  final String jam;
  final int jumlahIstri;
  final String kewarganegaraanAyahIstri;
  final String kewarganegaraanAyahSuami;
  final String kewarganegaraanIbuIstri;
  final String kewarganegaraanIbuSuami;
  final String kewarganegaraanIstri;
  final String kewarganegaraanSuami;
  final String namaAyahIstri;
  final String namaAyahSuami;
  final String namaIbuIstri;
  final String namaIbuSuami;
  final String namaIstri;
  final String? namaIstriSebelumnya;
  final String namaSuami;
  final String? namaSuamiSebelumnya;
  final String nikAyahIstri;
  final String nikAyahSuami;
  final String nikIbuIstri;
  final String nikIbuSuami;
  final String nikIstri;
  final String nikSuami;
  final String pekerjaanAyahIstri;
  final String pekerjaanAyahSuami;
  final String pekerjaanIbuIstri;
  final String pekerjaanIbuSuami;
  final String pekerjaanIstri;
  final String pekerjaanSuami;
  final String statusKawinIstriId;
  final String statusKawinSuamiId;
  final String tanggal;
  final String tanggalLahiAyahIstri;
  final String tanggalLahiAyahSuami;
  final String tanggalLahiIbuIstri;
  final String tanggalLahiIbuSuami;
  final String tanggalLahirAyahIstri;
  final String tanggalLahirAyahSuami;
  final String tanggalLahirIbuIstri;
  final String tanggalLahirIbuSuami;
  final String tanggalLahirIstri;
  final String tanggalLahirSuami;
  final String tempat;
  final String tempatLahirAyahIstri;
  final String tempatLahirAyahSuami;
  final String tempatLahirIbuIstri;
  final String tempatLahirIbuSuami;
  final String tempatLahirIstri;
  final String tempatLahirSuami;

  SPPernikahanRequestDto({
    required this.agamaAyahIstriId,
    required this.agamaAyahSuamiId,
    required this.agamaIbuIstriId,
    required this.agamaIbuSuamiId,
    required this.agamaIstriId,
    required this.agamaSuamiId,
    required this.alamatAyahIstri,
    required this.alamatAyahSuami,
    required this.alamatIbuIstri,
    required this.alamatIbuSuami,
    required this.alamatIstri,
    required this.alamatSuami,
    required this.disahkanOleh,
    required this.hari,
    required this.jam,
    required this.jumlahIstri,
    required this.kewarganegaraanAyahIstri,
    required this.kewarganegaraanAyahSuami,
    required this.kewarganegaraanIbuIstri,
    required this.kewarganegaraanIbuSuami,
    required this.kewarganegaraanIstri,
    required this.kewarganegaraanSuami,
    required this.namaAyahIstri,
    required this.namaAyahSuami,
    required this.namaIbuIstri,
    required this.namaIbuSuami,
    required this.namaIstri,
    this.namaIstriSebelumnya,
    required this.namaSuami,
    this.namaSuamiSebelumnya,
    required this.nikAyahIstri,
    required this.nikAyahSuami,
    required this.nikIbuIstri,
    required this.nikIbuSuami,
    required this.nikIstri,
    required this.nikSuami,
    required this.pekerjaanAyahIstri,
    required this.pekerjaanAyahSuami,
    required this.pekerjaanIbuIstri,
    required this.pekerjaanIbuSuami,
    required this.pekerjaanIstri,
    required this.pekerjaanSuami,
    required this.statusKawinIstriId,
    required this.statusKawinSuamiId,
    required this.tanggal,
    required this.tanggalLahiAyahIstri,
    required this.tanggalLahiAyahSuami,
    required this.tanggalLahiIbuIstri,
    required this.tanggalLahiIbuSuami,
    required this.tanggalLahirAyahIstri,
    required this.tanggalLahirAyahSuami,
    required this.tanggalLahirIbuIstri,
    required this.tanggalLahirIbuSuami,
    required this.tanggalLahirIstri,
    required this.tanggalLahirSuami,
    required this.tempat,
    required this.tempatLahirAyahIstri,
    required this.tempatLahirAyahSuami,
    required this.tempatLahirIbuIstri,
    required this.tempatLahirIbuSuami,
    required this.tempatLahirIstri,
    required this.tempatLahirSuami,
  });

  Map<String, dynamic> toJson() => {
    'agama_ayah_istri_id': agamaAyahIstriId,
    'agama_ayah_suami_id': agamaAyahSuamiId,
    'agama_ibu_istri_id': agamaIbuIstriId,
    'agama_ibu_suami_id': agamaIbuSuamiId,
    'agama_istri_id': agamaIstriId,
    'agama_suami_id': agamaSuamiId,
    'alamat_ayah_istri': alamatAyahIstri,
    'alamat_ayah_suami': alamatAyahSuami,
    'alamat_ibu_istri': alamatIbuIstri,
    'alamat_ibu_suami': alamatIbuSuami,
    'alamat_istri': alamatIstri,
    'alamat_suami': alamatSuami,
    'disahkan_oleh': disahkanOleh,
    'hari': hari,
    'jam': jam,
    'jumlah_istri': jumlahIstri,
    'kewarganegaraan_ayah_istri': kewarganegaraanAyahIstri,
    'kewarganegaraan_ayah_suami': kewarganegaraanAyahSuami,
    'kewarganegaraan_ibu_istri': kewarganegaraanIbuIstri,
    'kewarganegaraan_ibu_suami': kewarganegaraanIbuSuami,
    'kewarganegaraan_istri': kewarganegaraanIstri,
    'kewarganegaraan_suami': kewarganegaraanSuami,
    'nama_ayah_istri': namaAyahIstri,
    'nama_ayah_suami': namaAyahSuami,
    'nama_ibu_istri': namaIbuIstri,
    'nama_ibu_suami': namaIbuSuami,
    'nama_istri': namaIstri,
    'nama_istri_sebelumnya': namaIstriSebelumnya,
    'nama_suami': namaSuami,
    'nama_suami_sebelumnya': namaSuamiSebelumnya,
    'nik_ayah_istri': nikAyahIstri,
    'nik_ayah_suami': nikAyahSuami,
    'nik_ibu_istri': nikIbuIstri,
    'nik_ibu_suami': nikIbuSuami,
    'nik_istri': nikIstri,
    'nik_suami': nikSuami,
    'pekerjaan_ayah_istri': pekerjaanAyahIstri,
    'pekerjaan_ayah_suami': pekerjaanAyahSuami,
    'pekerjaan_ibu_istri': pekerjaanIbuIstri,
    'pekerjaan_ibu_suami': pekerjaanIbuSuami,
    'pekerjaan_istri': pekerjaanIstri,
    'pekerjaan_suami': pekerjaanSuami,
    'status_kawin_istri_id': statusKawinIstriId,
    'status_kawin_suami_id': statusKawinSuamiId,
    'tanggal': tanggal,
    'tanggal_lahi_ayah_istri': tanggalLahiAyahIstri,
    'tanggal_lahi_ayah_suami': tanggalLahiAyahSuami,
    'tanggal_lahi_ibu_istri': tanggalLahiIbuIstri,
    'tanggal_lahi_ibu_suami': tanggalLahiIbuSuami,
    'tanggal_lahir_ayah_istri': tanggalLahirAyahIstri,
    'tanggal_lahir_ayah_suami': tanggalLahirAyahSuami,
    'tanggal_lahir_ibu_istri': tanggalLahirIbuIstri,
    'tanggal_lahir_ibu_suami': tanggalLahirIbuSuami,
    'tanggal_lahir_istri': tanggalLahirIstri,
    'tanggal_lahir_suami': tanggalLahirSuami,
    'tempat': tempat,
    'tempat_lahir_ayah_istri': tempatLahirAyahIstri,
    'tempat_lahir_ayah_suami': tempatLahirAyahSuami,
    'tempat_lahir_ibu_istri': tempatLahirIbuIstri,
    'tempat_lahir_ibu_suami': tempatLahirIbuSuami,
    'tempat_lahir_istri': tempatLahirIstri,
    'tempat_lahir_suami': tempatLahirSuami,
  };
}

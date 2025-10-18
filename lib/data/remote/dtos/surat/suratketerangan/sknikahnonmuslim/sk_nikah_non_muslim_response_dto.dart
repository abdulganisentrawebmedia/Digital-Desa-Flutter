class SKNikahNonMuslimResponseDto {
  final SKNikahNonMuslimDataDto data;

  SKNikahNonMuslimResponseDto({required this.data});

  factory SKNikahNonMuslimResponseDto.fromJson(Map<String, dynamic> json) {
    return SKNikahNonMuslimResponseDto(
      data: SKNikahNonMuslimDataDto.fromJson(json['data']),
    );
  }
}

class SKNikahNonMuslimDataDto {
  final String agamaAyahIstriId;
  final String agamaAyahSuamiId;
  final String agamaIbuIstriId;
  final String agamaIbuSuamiId;
  final String agamaIstriId;
  final String agamaIstriTerdahuluId;
  final String agamaPernikahanId;
  final String agamaSaksi1Id;
  final String agamaSaksi2Id;
  final String agamaSuamiId;
  final String agamaSuamiTerdahuluId;
  final String alamatAyahIstri;
  final String alamatAyahSuami;
  final String alamatIbuIstri;
  final String alamatIbuSuami;
  final String alamatIstri;
  final String alamatIstriTerdahulu;
  final String alamatSaksi1;
  final String alamatSaksi2;
  final String alamatSuami;
  final String alamatSuamiTerdahulu;
  final String? anak;
  final String anakKeIstri;
  final String anakKeSuami;
  final String badanPeradilanPernikahan;
  final String bagianSuratId;
  final String createdAt;
  final String? deletedAt;
  final String diprosesOleh;
  final String diprosesOlehId;
  final String disahkanOleh;
  final String disahkanOlehId;
  final String id;
  final bool isIstriWargaDesa;
  final bool isSaksi1WargaDesa;
  final bool isSaksi2WargaDesa;
  final bool isSuamiWargaDesa;
  final String istriKe;
  final String jumlahAnakYangDiakui;
  final String keperluan;
  final String kewarganegaraanAyahIstri;
  final String kewarganegaraanAyahSuami;
  final String kewarganegaraanIbuIstri;
  final String kewarganegaraanIbuSuami;
  final String kewarganegaraanIstri;
  final String kewarganegaraanIstriTerdahulu;
  final String kewarganegaraanSaksi1;
  final String kewarganegaraanSaksi2;
  final String kewarganegaraanSuami;
  final String kewarganegaraanSuamiTerdahulu;
  final String kodeBelakang;
  final String kodeDepan;
  final String namaAyahIstri;
  final String namaAyahIstriTerdahulu;
  final String namaAyahSaksi1;
  final String namaAyahSaksi2;
  final String namaAyahSuami;
  final String namaAyahSuamiTerdahulu;
  final String namaIbuIstri;
  final String namaIbuSuami;
  final String namaIstri;
  final String namaIstriTerdahulu;
  final String namaOrganisasiAyahIstri;
  final String namaOrganisasiAyahSuami;
  final String namaOrganisasiIbuIstri;
  final String namaOrganisasiIbuSuami;
  final String namaOrganisasiIstri;
  final String namaOrganisasiPernikahan;
  final String namaOrganisasiSaksi1;
  final String namaOrganisasiSaksi2;
  final String namaOrganisasiSuami;
  final String namaPemukaAgama;
  final String namaSaksi1;
  final String namaSaksi2;
  final String namaSuami;
  final String namaSuamiTerdahulu;
  final String nikAyahIstri;
  final String nikAyahSuami;
  final String nikIbuIstri;
  final String nikIbuSuami;
  final String nikIstri;
  final String nikIstriTerdahulu;
  final String nikSaksi1;
  final String nikSaksi2;
  final String nikSuami;
  final String nikSuamiTerdahulu;
  final String noKkIstri;
  final String noKkSuami;
  final String nomorIzinPerwakilan;
  final String nomorPutusanPengadilan;
  final String nomorSurat;
  final String nomorSuratDeprecated;
  final String organisasiId;
  final String pasporIstri;
  final String pasporSuami;
  final String pekerjaanAyahIstri;
  final String pekerjaanAyahSuami;
  final String pekerjaanIbuIstri;
  final String pekerjaanIbuSuami;
  final String pekerjaanIstri;
  final String pekerjaanIstriTerdahulu;
  final String pekerjaanSaksi1;
  final String pekerjaanSaksi2;
  final String pekerjaanSuami;
  final String pekerjaanSuamiTerdahulu;
  final String pendidikanIdIstri;
  final String pendidikanIdSuami;
  final String perkawinanKeIstri;
  final String perkawinanKeSuami;
  final String status;
  final String statusKawinIstri;
  final String statusKawinSuami;
  final String tanggalLahirAyahIstri;
  final String tanggalLahirAyahSuami;
  final String tanggalLahirIbuIstri;
  final String tanggalLahirIbuSuami;
  final String tanggalLahirIstri;
  final String? tanggalLahirIstriTerdahulu;
  final String tanggalLahirSaksi1;
  final String tanggalLahirSaksi2;
  final String tanggalLahirSuami;
  final String? tanggalLahirSuamiTerdahulu;
  final String tanggalMelaporPernikahan;
  final String tanggalMeninggalIstriTerdahulu;
  final String tanggalMeninggalSuamiTerdahulu;
  final String tanggalPemberkatatanPernikahan;
  final String tanggalPutusanPengadilan;
  final String tanggalSurat;
  final String teleponAyahIstri;
  final String teleponAyahSuami;
  final String teleponIbuIstri;
  final String teleponIbuSuami;
  final String teleponIstri;
  final String teleponSuami;
  final String tempatLahirAyahIstri;
  final String tempatLahirAyahSuami;
  final String tempatLahirIbuIstri;
  final String tempatLahirIbuSuami;
  final String tempatLahirIstri;
  final String tempatLahirIstriTerdahulu;
  final String tempatLahirSaksi1;
  final String tempatLahirSaksi2;
  final String tempatLahirSuami;
  final String tempatLahirSuamiTerdahulu;
  final String tempatMeninggalIstriTerdahulu;
  final String tempatMeninggalSuamiTerdahulu;
  final String updatedAt;
  final String wargaNagaraIstri;
  final String wargaNagaraSuami;

  SKNikahNonMuslimDataDto({
    required this.agamaAyahIstriId,
    required this.agamaAyahSuamiId,
    required this.agamaIbuIstriId,
    required this.agamaIbuSuamiId,
    required this.agamaIstriId,
    required this.agamaIstriTerdahuluId,
    required this.agamaPernikahanId,
    required this.agamaSaksi1Id,
    required this.agamaSaksi2Id,
    required this.agamaSuamiId,
    required this.agamaSuamiTerdahuluId,
    required this.alamatAyahIstri,
    required this.alamatAyahSuami,
    required this.alamatIbuIstri,
    required this.alamatIbuSuami,
    required this.alamatIstri,
    required this.alamatIstriTerdahulu,
    required this.alamatSaksi1,
    required this.alamatSaksi2,
    required this.alamatSuami,
    required this.alamatSuamiTerdahulu,
    this.anak,
    required this.anakKeIstri,
    required this.anakKeSuami,
    required this.badanPeradilanPernikahan,
    required this.bagianSuratId,
    required this.createdAt,
    this.deletedAt,
    required this.diprosesOleh,
    required this.diprosesOlehId,
    required this.disahkanOleh,
    required this.disahkanOlehId,
    required this.id,
    required this.isIstriWargaDesa,
    required this.isSaksi1WargaDesa,
    required this.isSaksi2WargaDesa,
    required this.isSuamiWargaDesa,
    required this.istriKe,
    required this.jumlahAnakYangDiakui,
    required this.keperluan,
    required this.kewarganegaraanAyahIstri,
    required this.kewarganegaraanAyahSuami,
    required this.kewarganegaraanIbuIstri,
    required this.kewarganegaraanIbuSuami,
    required this.kewarganegaraanIstri,
    required this.kewarganegaraanIstriTerdahulu,
    required this.kewarganegaraanSaksi1,
    required this.kewarganegaraanSaksi2,
    required this.kewarganegaraanSuami,
    required this.kewarganegaraanSuamiTerdahulu,
    required this.kodeBelakang,
    required this.kodeDepan,
    required this.namaAyahIstri,
    required this.namaAyahIstriTerdahulu,
    required this.namaAyahSaksi1,
    required this.namaAyahSaksi2,
    required this.namaAyahSuami,
    required this.namaAyahSuamiTerdahulu,
    required this.namaIbuIstri,
    required this.namaIbuSuami,
    required this.namaIstri,
    required this.namaIstriTerdahulu,
    required this.namaOrganisasiAyahIstri,
    required this.namaOrganisasiAyahSuami,
    required this.namaOrganisasiIbuIstri,
    required this.namaOrganisasiIbuSuami,
    required this.namaOrganisasiIstri,
    required this.namaOrganisasiPernikahan,
    required this.namaOrganisasiSaksi1,
    required this.namaOrganisasiSaksi2,
    required this.namaOrganisasiSuami,
    required this.namaPemukaAgama,
    required this.namaSaksi1,
    required this.namaSaksi2,
    required this.namaSuami,
    required this.namaSuamiTerdahulu,
    required this.nikAyahIstri,
    required this.nikAyahSuami,
    required this.nikIbuIstri,
    required this.nikIbuSuami,
    required this.nikIstri,
    required this.nikIstriTerdahulu,
    required this.nikSaksi1,
    required this.nikSaksi2,
    required this.nikSuami,
    required this.nikSuamiTerdahulu,
    required this.noKkIstri,
    required this.noKkSuami,
    required this.nomorIzinPerwakilan,
    required this.nomorPutusanPengadilan,
    required this.nomorSurat,
    required this.nomorSuratDeprecated,
    required this.organisasiId,
    required this.pasporIstri,
    required this.pasporSuami,
    required this.pekerjaanAyahIstri,
    required this.pekerjaanAyahSuami,
    required this.pekerjaanIbuIstri,
    required this.pekerjaanIbuSuami,
    required this.pekerjaanIstri,
    required this.pekerjaanIstriTerdahulu,
    required this.pekerjaanSaksi1,
    required this.pekerjaanSaksi2,
    required this.pekerjaanSuami,
    required this.pekerjaanSuamiTerdahulu,
    required this.pendidikanIdIstri,
    required this.pendidikanIdSuami,
    required this.perkawinanKeIstri,
    required this.perkawinanKeSuami,
    required this.status,
    required this.statusKawinIstri,
    required this.statusKawinSuami,
    required this.tanggalLahirAyahIstri,
    required this.tanggalLahirAyahSuami,
    required this.tanggalLahirIbuIstri,
    required this.tanggalLahirIbuSuami,
    required this.tanggalLahirIstri,
    this.tanggalLahirIstriTerdahulu,
    required this.tanggalLahirSaksi1,
    required this.tanggalLahirSaksi2,
    required this.tanggalLahirSuami,
    this.tanggalLahirSuamiTerdahulu,
    required this.tanggalMelaporPernikahan,
    required this.tanggalMeninggalIstriTerdahulu,
    required this.tanggalMeninggalSuamiTerdahulu,
    required this.tanggalPemberkatatanPernikahan,
    required this.tanggalPutusanPengadilan,
    required this.tanggalSurat,
    required this.teleponAyahIstri,
    required this.teleponAyahSuami,
    required this.teleponIbuIstri,
    required this.teleponIbuSuami,
    required this.teleponIstri,
    required this.teleponSuami,
    required this.tempatLahirAyahIstri,
    required this.tempatLahirAyahSuami,
    required this.tempatLahirIbuIstri,
    required this.tempatLahirIbuSuami,
    required this.tempatLahirIstri,
    required this.tempatLahirIstriTerdahulu,
    required this.tempatLahirSaksi1,
    required this.tempatLahirSaksi2,
    required this.tempatLahirSuami,
    required this.tempatLahirSuamiTerdahulu,
    required this.tempatMeninggalIstriTerdahulu,
    required this.tempatMeninggalSuamiTerdahulu,
    required this.updatedAt,
    required this.wargaNagaraIstri,
    required this.wargaNagaraSuami,
  });

  factory SKNikahNonMuslimDataDto.fromJson(Map<String, dynamic> json) {
    return SKNikahNonMuslimDataDto(
      agamaAyahIstriId: json['agama_ayah_istri_id'] ?? '',
      agamaAyahSuamiId: json['agama_ayah_suami_id'] ?? '',
      agamaIbuIstriId: json['agama_ibu_istri_id'] ?? '',
      agamaIbuSuamiId: json['agama_ibu_suami_id'] ?? '',
      agamaIstriId: json['agama_istri_id'] ?? '',
      agamaIstriTerdahuluId: json['agama_istri_terdahulu_id'] ?? '',
      agamaPernikahanId: json['agama_pernikahan_id'] ?? '',
      agamaSaksi1Id: json['agama_saksi1_id'] ?? '',
      agamaSaksi2Id: json['agama_saksi2_id'] ?? '',
      agamaSuamiId: json['agama_suami_id'] ?? '',
      agamaSuamiTerdahuluId: json['agama_suami_terdahulu_id'] ?? '',
      alamatAyahIstri: json['alamat_ayah_istri'] ?? '',
      alamatAyahSuami: json['alamat_ayah_suami'] ?? '',
      alamatIbuIstri: json['alamat_ibu_istri'] ?? '',
      alamatIbuSuami: json['alamat_ibu_suami'] ?? '',
      alamatIstri: json['alamat_istri'] ?? '',
      alamatIstriTerdahulu: json['alamat_istri_terdahulu'] ?? '',
      alamatSaksi1: json['alamat_saksi1'] ?? '',
      alamatSaksi2: json['alamat_saksi2'] ?? '',
      alamatSuami: json['alamat_suami'] ?? '',
      alamatSuamiTerdahulu: json['alamat_suami_terdahulu'] ?? '',
      anak: json['anak'],
      anakKeIstri: json['anak_ke_istri'] ?? '',
      anakKeSuami: json['anak_ke_suami'] ?? '',
      badanPeradilanPernikahan: json['badan_peradilan_pernikahan'] ?? '',
      bagianSuratId: json['bagian_surat_id'] ?? '',
      createdAt: json['created_at'] ?? '',
      deletedAt: json['deleted_at'],
      diprosesOleh: json['diproses_oleh'] ?? '',
      diprosesOlehId: json['diproses_oleh_id'] ?? '',
      disahkanOleh: json['disahkan_oleh'] ?? '',
      disahkanOlehId: json['disahkan_oleh_id'] ?? '',
      id: json['id'] ?? '',
      isIstriWargaDesa: json['is_istri_warga_desa'] ?? false,
      isSaksi1WargaDesa: json['is_saksi1_warga_desa'] ?? false,
      isSaksi2WargaDesa: json['is_saksi2_warga_desa'] ?? false,
      isSuamiWargaDesa: json['is_suami_warga_desa'] ?? false,
      istriKe: json['istri_ke'] ?? '',
      jumlahAnakYangDiakui: json['jumlah_anak_yang_diakui'] ?? '',
      keperluan: json['keperluan'] ?? '',
      kewarganegaraanAyahIstri: json['kewarganegaraan_ayah_istri'] ?? '',
      kewarganegaraanAyahSuami: json['kewarganegaraan_ayah_suami'] ?? '',
      kewarganegaraanIbuIstri: json['kewarganegaraan_ibu_istri'] ?? '',
      kewarganegaraanIbuSuami: json['kewarganegaraan_ibu_suami'] ?? '',
      kewarganegaraanIstri: json['kewarganegaraan_istri'] ?? '',
      kewarganegaraanIstriTerdahulu: json['kewarganegaraan_istri_terdahulu'] ?? '',
      kewarganegaraanSaksi1: json['kewarganegaraan_saksi1'] ?? '',
      kewarganegaraanSaksi2: json['kewarganegaraan_saksi2'] ?? '',
      kewarganegaraanSuami: json['kewarganegaraan_suami'] ?? '',
      kewarganegaraanSuamiTerdahulu: json['kewarganegaraan_suami_terdahulu'] ?? '',
      kodeBelakang: json['kode_belakang'] ?? '',
      kodeDepan: json['kode_depan'] ?? '',
      namaAyahIstri: json['nama_ayah_istri'] ?? '',
      namaAyahIstriTerdahulu: json['nama_ayah_istri_terdahulu'] ?? '',
      namaAyahSaksi1: json['nama_ayah_saksi1'] ?? '',
      namaAyahSaksi2: json['nama_ayah_saksi2'] ?? '',
      namaAyahSuami: json['nama_ayah_suami'] ?? '',
      namaAyahSuamiTerdahulu: json['nama_ayah_suami_terdahulu'] ?? '',
      namaIbuIstri: json['nama_ibu_istri'] ?? '',
      namaIbuSuami: json['nama_ibu_suami'] ?? '',
      namaIstri: json['nama_istri'] ?? '',
      namaIstriTerdahulu: json['nama_istri_terdahulu'] ?? '',
      namaOrganisasiAyahIstri: json['nama_organisasi_ayah_istri'] ?? '',
      namaOrganisasiAyahSuami: json['nama_organisasi_ayah_suami'] ?? '',
      namaOrganisasiIbuIstri: json['nama_organisasi_ibu_istri'] ?? '',
      namaOrganisasiIbuSuami: json['nama_organisasi_ibu_suami'] ?? '',
      namaOrganisasiIstri: json['nama_organisasi_istri'] ?? '',
      namaOrganisasiPernikahan: json['nama_organisasi_pernikahan'] ?? '',
      namaOrganisasiSaksi1: json['nama_organisasi_saksi1'] ?? '',
      namaOrganisasiSaksi2: json['nama_organisasi_saksi2'] ?? '',
      namaOrganisasiSuami: json['nama_organisasi_suami'] ?? '',
      namaPemukaAgama: json['nama_pemuka_agama'] ?? '',
      namaSaksi1: json['nama_saksi1'] ?? '',
      namaSaksi2: json['nama_saksi2'] ?? '',
      namaSuami: json['nama_suami'] ?? '',
      namaSuamiTerdahulu: json['nama_suami_terdahulu'] ?? '',
      nikAyahIstri: json['nik_ayah_istri'] ?? '',
      nikAyahSuami: json['nik_ayah_suami'] ?? '',
      nikIbuIstri: json['nik_ibu_istri'] ?? '',
      nikIbuSuami: json['nik_ibu_suami'] ?? '',
      nikIstri: json['nik_istri'] ?? '',
      nikIstriTerdahulu: json['nik_istri_terdahulu'] ?? '',
      nikSaksi1: json['nik_saksi1'] ?? '',
      nikSaksi2: json['nik_saksi2'] ?? '',
      nikSuami: json['nik_suami'] ?? '',
      nikSuamiTerdahulu: json['nik_suami_terdahulu'] ?? '',
      noKkIstri: json['no_kk_istri'] ?? '',
      noKkSuami: json['no_kk_suami'] ?? '',
      nomorIzinPerwakilan: json['nomor_izin_perwakilan'] ?? '',
      nomorPutusanPengadilan: json['nomor_putusan_pengadilan'] ?? '',
      nomorSurat: json['nomor_surat'] ?? '',
      nomorSuratDeprecated: json['nomor_surat_deprecated'] ?? '',
      organisasiId: json['organisasi_id'] ?? '',
      pasporIstri: json['paspor_istri'] ?? '',
      pasporSuami: json['paspor_suami'] ?? '',
      pekerjaanAyahIstri: json['pekerjaan_ayah_istri'] ?? '',
      pekerjaanAyahSuami: json['pekerjaan_ayah_suami'] ?? '',
      pekerjaanIbuIstri: json['pekerjaan_ibu_istri'] ?? '',
      pekerjaanIbuSuami: json['pekerjaan_ibu_suami'] ?? '',
      pekerjaanIstri: json['pekerjaan_istri'] ?? '',
      pekerjaanIstriTerdahulu: json['pekerjaan_istri_terdahulu'] ?? '',
      pekerjaanSaksi1: json['pekerjaan_saksi1'] ?? '',
      pekerjaanSaksi2: json['pekerjaan_saksi2'] ?? '',
      pekerjaanSuami: json['pekerjaan_suami'] ?? '',
      pekerjaanSuamiTerdahulu: json['pekerjaan_suami_terdahulu'] ?? '',
      pendidikanIdIstri: json['pendidikan_id_istri'] ?? '',
      pendidikanIdSuami: json['pendidikan_id_suami'] ?? '',
      perkawinanKeIstri: json['perkawinan_ke_istri'] ?? '',
      perkawinanKeSuami: json['perkawinan_ke_suami'] ?? '',
      status: json['status'] ?? '',
      statusKawinIstri: json['status_kawin_istri'] ?? '',
      statusKawinSuami: json['status_kawin_suami'] ?? '',
      tanggalLahirAyahIstri: json['tanggal_lahir_ayah_istri'] ?? '',
      tanggalLahirAyahSuami: json['tanggal_lahir_ayah_suami'] ?? '',
      tanggalLahirIbuIstri: json['tanggal_lahir_ibu_istri'] ?? '',
      tanggalLahirIbuSuami: json['tanggal_lahir_ibu_suami'] ?? '',
      tanggalLahirIstri: json['tanggal_lahir_istri'] ?? '',
      tanggalLahirIstriTerdahulu: json['tanggal_lahir_istri_terdahulu'],
      tanggalLahirSaksi1: json['tanggal_lahir_saksi1'] ?? '',
      tanggalLahirSaksi2: json['tanggal_lahir_saksi2'] ?? '',
      tanggalLahirSuami: json['tanggal_lahir_suami'] ?? '',
      tanggalLahirSuamiTerdahulu: json['tanggal_lahir_suami_terdahulu'],
      tanggalMelaporPernikahan: json['tanggal_melapor_pernikahan'] ?? '',
      tanggalMeninggalIstriTerdahulu: json['tanggal_meninggal_istri_terdahulu'] ?? '',
      tanggalMeninggalSuamiTerdahulu: json['tanggal_meninggal_suami_terdahulu'] ?? '',
      tanggalPemberkatatanPernikahan: json['tanggal_pemberkatan_pernikahan'] ?? '',
      tanggalPutusanPengadilan: json['tanggal_putusan_pengadilan'] ?? '',
      tanggalSurat: json['tanggal_surat'] ?? '',
      teleponAyahIstri: json['telepon_ayah_istri'] ?? '',
      teleponAyahSuami: json['telepon_ayah_suami'] ?? '',
      teleponIbuIstri: json['telepon_ibu_istri'] ?? '',
      teleponIbuSuami: json['telepon_ibu_suami'] ?? '',
      teleponIstri: json['telepon_istri'] ?? '',
      teleponSuami: json['telepon_suami'] ?? '',
      tempatLahirAyahIstri: json['tempat_lahir_ayah_istri'] ?? '',
      tempatLahirAyahSuami: json['tempat_lahir_ayah_suami'] ?? '',
      tempatLahirIbuIstri: json['tempat_lahir_ibu_istri'] ?? '',
      tempatLahirIbuSuami: json['tempat_lahir_ibu_suami'] ?? '',
      tempatLahirIstri: json['tempat_lahir_istri'] ?? '',
      tempatLahirIstriTerdahulu: json['tempat_lahir_istri_terdahulu'] ?? '',
      tempatLahirSaksi1: json['tempat_lahir_saksi1'] ?? '',
      tempatLahirSaksi2: json['tempat_lahir_saksi2'] ?? '',
      tempatLahirSuami: json['tempat_lahir_suami'] ?? '',
      tempatLahirSuamiTerdahulu: json['tempat_lahir_suami_terdahulu'] ?? '',
      tempatMeninggalIstriTerdahulu: json['tempat_meninggal_istri_terdahulu'] ?? '',
      tempatMeninggalSuamiTerdahulu: json['tempat_meninggal_suami_terdahulu'] ?? '',
      updatedAt: json['updated_at'] ?? '',
      wargaNagaraIstri: json['warga_negara_istri'] ?? '',
      wargaNagaraSuami: json['warga_negara_suami'] ?? '',
    );
  }
}
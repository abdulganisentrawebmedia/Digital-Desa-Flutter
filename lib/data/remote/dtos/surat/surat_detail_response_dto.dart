class SuratDetailResponseDto {
  final DataDto data;
  final MetaDto meta;

  SuratDetailResponseDto({
    required this.data,
    required this.meta,
  });

  factory SuratDetailResponseDto.fromJson(Map<String, dynamic> json) {
    return SuratDetailResponseDto(
      data: DataDto.fromJson(json['data']),
      meta: MetaDto.fromJson(json['meta']),
    );
  }
}

class DataDto {
  final String? agama;
  final String? agamaAyahIstri;
  final String? agamaAyahIstriId;
  final String? agamaAyahSuami;
  final String? agamaAyahSuamiId;
  final String? agamaIbuIstri;
  final String? agamaIbuIstriId;
  final String? agamaIbuSuami;
  final String? agamaIbuSuamiId;
  final String? agamaId;
  final String? agamaIstri;
  final String? agamaIstriId;
  final String? agamaSuami;
  final String? agamaSuamiId;
  final String? alamat;
  final String? alamat1;
  final String? alamat2;
  final String? alamatAyah;
  final String? alamatAyahIstri;
  final String? alamatAyahSuami;
  final String? alamatIbu;
  final String? alamatIbuIstri;
  final String? alamatIbuSuami;
  final String? alamatIdentitas;
  final String? alamatIstri;
  final String? alamatMendiang;
  final String? alamatOrtu;
  final String? alamatPerusahaan;
  final String? alamatPindah;
  final String? alamatSuami;
  final String? alamatUsaha;
  final String? alasanIzin;
  final String? alasanPindah;
  final int? anakKe;
  final String? bidangUsaha;
  final String? bidangUsahaId;
  final String? ciri;
  final String? createdAt;
  final String? createdById;
  final String? dasarPengajuan;
  final String? deletedAt;
  final String? deskripsi;
  final String? diajukanOlehNik;
  final String? dimulai;
  final String? diprosesOleh;
  final String? diprosesOlehId;
  final String? disahkanOleh;
  final String? disahkanOlehId;
  final String? disposisiKuasaSebagai;
  final String? disposisiKuasaUntuk;
  final String? ditugaskanUntuk;
  final String? hari;
  final String? hariMeninggal;
  final String? hilangSejak;
  final String? hubungan;
  final String? hubunganId;
  final String? id;
  final String? jabatan;
  final String? jabatanPemberi;
  final String? jabatanPenerima;
  final String? jam;
  final String? jamLahir;
  final String? jenisBarang;
  final String? jenisKelamin;
  final String? jenisKelaminAnak;
  final String? jenisKelaminMendiang;
  final String? jenisKelaminOrtu;
  final String? jenisUsaha;
  final String? jenisUsahaId;
  final int? jumlahAnggota;
  final int? jumlahIstri;
  final String? jumlahKaryawan;
  final int? jumlahPengikut;
  final String? kelasAnak;
  final String? keperluan;
  final String? kewarganegaraan;
  final String? kewarganegaanAyahIstri;
  final String? kewarganegaanAyahSuami;
  final String? kewarganegaanIbuIstri;
  final String? kewarganegaanIbuSuami;
  final String? kewarganegaanIstri;
  final String? kewarganegaanSuami;
  final String? kontak;
  final int? lama;
  final int? luasBangunan;
  final String? luasTanah;
  final String? maksdTujuan;
  final String? nama;
  final String? nama1;
  final String? nama2;
  final String? namaAcara;
  final String? namaAnak;
  final String? namaAyah;
  final String? namaAyahIstri;
  final String? namaAyahSuami;
  final String? namaIbu;
  final String? namaIbuIstri;
  final String? namaIbuSuami;
  final String? namaIstri;
  final String? namaIstriSebelumnya;
  final String? namaMendiang;
  final String? namaOrangHilang;
  final String? namaOrtu;
  final String? namaPejabat;
  final String? namaPemberi;
  final String? namaPenerima;
  final String? namaPerusahaan;
  final String? namaSekolahAnak;
  final String? namaSuami;
  final String? namaSuamiSebelumnya;
  final String? namaUsaha;
  final String? nib;
  final String? nik;
  final String? nikAnak;
  final String? nikAyah;
  final String? nikAyahIstri;
  final String? nikAyahSuami;
  final String? nikIbu;
  final String? nikIbuIstri;
  final String? nikIbuSuami;
  final String? nikIstri;
  final String? nikMendiang;
  final String? nikOrtu;
  final String? nikPemberi;
  final String? nikPenerima;
  final String? nikSuami;
  final String? nomor1;
  final String? nomor2;
  final String? nomorAktaPendirian;
  final String? nomorPengajuan;
  final String? nomorSurat;
  final String? npwp;
  final String? organisasiId;
  final String? pekerjaan;
  final String? pekerjaanAyahIstri;
  final String? pekerjaanAyahSuami;
  final String? pekerjaanIbuIstri;
  final String? pekerjaanIbuSuami;
  final String? pekerjaanIstri;
  final String? pekerjaanOrtu;
  final String? pekerjaanSuami;
  final String? penanggungJawab;
  final List<PenerimaDto>? penerima;
  final String? penghasilanOrtu;
  final String? penyebab;
  final String? perbedaan;
  final String? perbedaanId;
  final String? peruntukanBangunan;
  final String? satuanLama;
  final String? sebabMeninggal;
  final String? selesai;
  final String? status;
  final String? statusKawin;
  final String? statusKawinId;
  final String? statusKawinIstri;
  final String? statusKawinIstriId;
  final String? statusKawinSuami;
  final String? statusKawinSuamiId;
  final String? statusKepemilikanBangunan;
  final String? tanggal;
  final String? tanggalKeberangkatan;
  final String? tanggalLahir;
  final String? tanggalLahir1;
  final String? tanggalLahir2;
  final String? tanggalLahirAnak;
  final String? tanggalLahirAyah;
  final String? tanggalLahirAyahIstri;
  final String? tanggalLahirAyahSuami;
  final String? tanggalLahirIbu;
  final String? tanggalLahirIbuIstri;
  final String? tanggalLahirIbuSuami;
  final String? tanggalLahirIstri;
  final String? tanggalLahirMendiang;
  final String? tanggalLahirOrtu;
  final String? tanggalLahirSuami;
  final String? tanggalMeninggal;
  final String? tanggunganOrtu;
  final String? tempat;
  final String? tempatAcara;
  final String? tempatKehilangan;
  final String? tempatLahir;
  final String? tempatLahir1;
  final String? tempatLahir2;
  final String? tempatLahirAnak;
  final String? tempatLahirAyah;
  final String? tempatLahirAyahIstri;
  final String? tempatLahirAyahSuami;
  final String? tempatLahirIbu;
  final String? tempatLahirIbuIstri;
  final String? tempatLahirIbuSuami;
  final String? tempatLahirIstri;
  final String? tempatLahirMendiang;
  final String? tempatLahirOrtu;
  final String? tempatLahirSuami;
  final String? tempatMeninggal;
  final String? tempatTujuan;
  final String? tercantum;
  final String? tercantum2;
  final String? tercantumId;
  final String? tercantumId2;
  final String? terhitungDari;
  final String? updatedAt;
  final String? updatedById;
  final int? usia;
  final String? waktuKehilangan;
  final bool? wargaDesa;
  final bool? isWargaDesa;
  final String? namaJabatanUtama;
  final String? bagianSuratId;
  final String? tanggalSurat;
  final String? kodeDepan;
  final String? kodeBelakang;
  final String? nik1;
  final String? pekerjaan1;
  final String? jenisKelamin1;
  final String? rincianBarang;
  final String? nik2;
  final String? pekerjaan2;
  final String? jenisKelamin2;
  final String? agamaIbuId;
  final String? kewarganegaanIbuId;
  final String? pekerjaanIbu;
  final String? lamaDikandung;
  final String? tujuan;
  final String? berlakuMulai;
  final String? berlakuSampai;
  final String? merk;
  final String? tahunPembuatan;
  final String? warna;
  final String? nomorPolisi;
  final String? nomorMesin;
  final String? nomorRangka;
  final String? nomorBpkb;
  final String? bahanBakar;
  final String? isiSilinder;
  final String? atasNama;
  final String? alamatAnak;
  final String? alamatOrangTua;
  final String? agamaIdAnak;
  final String? pekerjaanAyah;
  final String? noKk;
  final String? kepalaKeluarga;
  final String? pendidikanId;
  final String? kecamatanKua;
  final String? tanggalNikah;
  final String? namaPasangan;
  final String? agamaIdSuami;
  final String? agamaIdIstri;
  final String? sebabCerai;
  final String? nikPasangan;
  final String? tempatLahirPasangan;
  final String? tanggalLahirPasangan;
  final String? kewarganegaanPasangan;
  final String? agamaIdPasangan;
  final String? pekerjaanPasangan;
  final String? alamatPasangan;
  final String? nikAyahPasangan;
  final String? namaAyahPasangan;
  final String? alasanPermohonan;
  final String? kewarganegaraan2;
  final String? agama2Id;
  final String? negaraTujuan;
  final String? statusPekerjaan;
  final String? masaKontrak;
  final String? memberiIzin;
  final String? diberiIzin;
  final bool? isPemohonWargaDesa;
  final String? nikPemohon;
  final String? namaPemohon;
  final String? tanggalLahirPemohon;
  final String? tempatLahirPemohon;
  final bool? isSaksi1WargaDesa;
  final bool? isSaksi2WargaDesa;
  final String? jalan;
  final String? rtRw;
  final String? desa;
  final String? kecamatan;
  final String? kabupaten;
  final String? statusTanah;
  final String? diperolehDari;
  final String? diperolehSejak;
  final String? diperolehDengan;
  final String? dipergunakan;
  final String? batasUtara;
  final String? batasSelatan;
  final String? batasBarat;
  final String? batasTimur;
  final String? jenisTanah;
  final String? buktiKepemilikanTanah;
  final String? nomorBuktiKepemilikan;
  final String? asalKepemilikanTanah;
  final String? buktiKepemilikanTanahTanah;
  final String? golonganDarah;
  final String? aktaLahir;
  final String? aktaKawin;
  final String? tanggalKawin;
  final String? aktaCerai;
  final String? tanggalCerai;
  final String? disabilitasId;
  final List<AnggotaKeluargaDto>? anggotaKeluarga;
  final bool? isSuamiWargaDesa;
  final String? noKkSuami;
  final String? pendidikanIdSuami;
  final String? istriKe;
  final String? anakKeSuami;
  final String? perkawinanKeSuami;
  final String? pasporSuami;
  final String? teleponSuami;
  final String? namaOrganisasiSuami;
  final String? wargaNegaraSuami;
  final String? teleponAyahSuami;
  final String? namaOrganisasiAyahSuami;
  final String? teleponIbuSuami;
  final String? namaOrganisasiIbuSuami;
  final String? nikIstriTerdahulu;
  final String? namaIstriTerdahulu;
  final String? namaAyahIstriTerdahulu;
  final String? tempatLahirIstriTerdahulu;
  final String? tanggalLahirIstriTerdahulu;
  final String? kewarganegaanIstriTerdahulu;
  final String? agamaIstriTerdahuluId;
  final String? pekerjaanIstriTerdahulu;
  final String? alamatIstriTerdahulu;
  final String? tanggalMeninggalIstriTerdahulu;
  final String? tempatMeninggalIstriTerdahulu;
  final bool? isIstriWargaDesa;
  final String? noKkIstri;
  final String? pendidikanIdIstri;
  final String? anakKeIstri;
  final String? perkawinanKeIstri;
  final String? pasporIstri;
  final String? teleponIstri;
  final String? namaOrganisasiIstri;
  final String? wargaNegaraIstri;
  final String? teleponAyahIstri;
  final String? namaOrganisasiAyahIstri;
  final String? teleponIbuIstri;
  final String? namaOrganisasiIbuIstri;
  final String? nikSuamiTerdahulu;
  final String? namaSuamiTerdahulu;
  final String? namaAyahSuamiTerdahulu;
  final String? tempatLahirSuamiTerdahulu;
  final String? tanggalLahirSuamiTerdahulu;
  final String? kewarganegaanSuamiTerdahulu;
  final String? agamaSuamiTerdahuluId;
  final String? pekerjaanSuamiTerdahulu;
  final String? alamatSuamiTerdahulu;
  final String? tanggalMeninggalSuamiTerdahulu;
  final String? tempatMeninggalSuamiTerdahulu;
  final String? nikSaksi1;
  final String? namaSaksi1;
  final String? namaAyahSaksi1;
  final String? tempatLahirSaksi1;
  final String? tanggalLahirSaksi1;
  final String? kewarganegaanSaksi1;
  final String? agamaSaksi1Id;
  final String? pekerjaanSaksi1;
  final String? alamatSaksi1;
  final String? namaOrganisasiSaksi1;
  final String? nikSaksi2;
  final String? namaSaksi2;
  final String? namaAyahSaksi2;
  final String? tempatLahirSaksi2;
  final String? tanggalLahirSaksi2;
  final String? kewarganegaanSaksi2;
  final String? agamaSaksi2Id;
  final String? pekerjaanSaksi2;
  final String? alamatSaksi2;
  final String? namaOrganisasiSaksi2;
  final String? tanggalMelaporPernikahan;
  final String? tanggalPemberkataanPernikahan;
  final String? agamaPernikahanId;
  final String? badanPeradilanPernikahan;
  final String? namaOrganisasiPernikahan;
  final String? nomorPutusanPengadilan;
  final String? tanggalPutusanPengadilan;
  final String? namaPemukaAgama;
  final String? nomorIzinPerwakilan;
  final String? jumlahAnakYangDiakui;
  final List<AnakDto>? anak;

  DataDto({
    this.agama,
    this.agamaAyahIstri,
    this.agamaAyahIstriId,
    this.agamaAyahSuami,
    this.agamaAyahSuamiId,
    this.agamaIbuIstri,
    this.agamaIbuIstriId,
    this.agamaIbuSuami,
    this.agamaIbuSuamiId,
    this.agamaId,
    this.agamaIstri,
    this.agamaIstriId,
    this.agamaSuami,
    this.agamaSuamiId,
    this.alamat,
    this.alamat1,
    this.alamat2,
    this.alamatAyah,
    this.alamatAyahIstri,
    this.alamatAyahSuami,
    this.alamatIbu,
    this.alamatIbuIstri,
    this.alamatIbuSuami,
    this.alamatIdentitas,
    this.alamatIstri,
    this.alamatMendiang,
    this.alamatOrtu,
    this.alamatPerusahaan,
    this.alamatPindah,
    this.alamatSuami,
    this.alamatUsaha,
    this.alasanIzin,
    this.alasanPindah,
    this.anakKe,
    this.bidangUsaha,
    this.bidangUsahaId,
    this.ciri,
    this.createdAt,
    this.createdById,
    this.dasarPengajuan,
    this.deletedAt,
    this.deskripsi,
    this.diajukanOlehNik,
    this.dimulai,
    this.diprosesOleh,
    this.diprosesOlehId,
    this.disahkanOleh,
    this.disahkanOlehId,
    this.disposisiKuasaSebagai,
    this.disposisiKuasaUntuk,
    this.ditugaskanUntuk,
    this.hari,
    this.hariMeninggal,
    this.hilangSejak,
    this.hubungan,
    this.hubunganId,
    this.id,
    this.jabatan,
    this.jabatanPemberi,
    this.jabatanPenerima,
    this.jam,
    this.jamLahir,
    this.jenisBarang,
    this.jenisKelamin,
    this.jenisKelaminAnak,
    this.jenisKelaminMendiang,
    this.jenisKelaminOrtu,
    this.jenisUsaha,
    this.jenisUsahaId,
    this.jumlahAnggota,
    this.jumlahIstri,
    this.jumlahKaryawan,
    this.jumlahPengikut,
    this.kelasAnak,
    this.keperluan,
    this.kewarganegaraan,
    this.kewarganegaanAyahIstri,
    this.kewarganegaanAyahSuami,
    this.kewarganegaanIbuIstri,
    this.kewarganegaanIbuSuami,
    this.kewarganegaanIstri,
    this.kewarganegaanSuami,
    this.kontak,
    this.lama,
    this.luasBangunan,
    this.luasTanah,
    this.maksdTujuan,
    this.nama,
    this.nama1,
    this.nama2,
    this.namaAcara,
    this.namaAnak,
    this.namaAyah,
    this.namaAyahIstri,
    this.namaAyahSuami,
    this.namaIbu,
    this.namaIbuIstri,
    this.namaIbuSuami,
    this.namaIstri,
    this.namaIstriSebelumnya,
    this.namaMendiang,
    this.namaOrangHilang,
    this.namaOrtu,
    this.namaPejabat,
    this.namaPemberi,
    this.namaPenerima,
    this.namaPerusahaan,
    this.namaSekolahAnak,
    this.namaSuami,
    this.namaSuamiSebelumnya,
    this.namaUsaha,
    this.nib,
    this.nik,
    this.nikAnak,
    this.nikAyah,
    this.nikAyahIstri,
    this.nikAyahSuami,
    this.nikIbu,
    this.nikIbuIstri,
    this.nikIbuSuami,
    this.nikIstri,
    this.nikMendiang,
    this.nikOrtu,
    this.nikPemberi,
    this.nikPenerima,
    this.nikSuami,
    this.nomor1,
    this.nomor2,
    this.nomorAktaPendirian,
    this.nomorPengajuan,
    this.nomorSurat,
    this.npwp,
    this.organisasiId,
    this.pekerjaan,
    this.pekerjaanAyahIstri,
    this.pekerjaanAyahSuami,
    this.pekerjaanIbuIstri,
    this.pekerjaanIbuSuami,
    this.pekerjaanIstri,
    this.pekerjaanOrtu,
    this.pekerjaanSuami,
    this.penanggungJawab,
    this.penerima,
    this.penghasilanOrtu,
    this.penyebab,
    this.perbedaan,
    this.perbedaanId,
    this.peruntukanBangunan,
    this.satuanLama,
    this.sebabMeninggal,
    this.selesai,
    this.status,
    this.statusKawin,
    this.statusKawinId,
    this.statusKawinIstri,
    this.statusKawinIstriId,
    this.statusKawinSuami,
    this.statusKawinSuamiId,
    this.statusKepemilikanBangunan,
    this.tanggal,
    this.tanggalKeberangkatan,
    this.tanggalLahir,
    this.tanggalLahir1,
    this.tanggalLahir2,
    this.tanggalLahirAnak,
    this.tanggalLahirAyah,
    this.tanggalLahirAyahIstri,
    this.tanggalLahirAyahSuami,
    this.tanggalLahirIbu,
    this.tanggalLahirIbuIstri,
    this.tanggalLahirIbuSuami,
    this.tanggalLahirIstri,
    this.tanggalLahirMendiang,
    this.tanggalLahirOrtu,
    this.tanggalLahirSuami,
    this.tanggalMeninggal,
    this.tanggunganOrtu,
    this.tempat,
    this.tempatAcara,
    this.tempatKehilangan,
    this.tempatLahir,
    this.tempatLahir1,
    this.tempatLahir2,
    this.tempatLahirAnak,
    this.tempatLahirAyah,
    this.tempatLahirAyahIstri,
    this.tempatLahirAyahSuami,
    this.tempatLahirIbu,
    this.tempatLahirIbuIstri,
    this.tempatLahirIbuSuami,
    this.tempatLahirIstri,
    this.tempatLahirMendiang,
    this.tempatLahirOrtu,
    this.tempatLahirSuami,
    this.tempatMeninggal,
    this.tempatTujuan,
    this.tercantum,
    this.tercantum2,
    this.tercantumId,
    this.tercantumId2,
    this.terhitungDari,
    this.updatedAt,
    this.updatedById,
    this.usia,
    this.waktuKehilangan,
    this.wargaDesa,
    this.isWargaDesa,
    this.namaJabatanUtama,
    this.bagianSuratId,
    this.tanggalSurat,
    this.kodeDepan,
    this.kodeBelakang,
    this.nik1,
    this.pekerjaan1,
    this.jenisKelamin1,
    this.rincianBarang,
    this.nik2,
    this.pekerjaan2,
    this.jenisKelamin2,
    this.agamaIbuId,
    this.kewarganegaanIbuId,
    this.pekerjaanIbu,
    this.lamaDikandung,
    this.tujuan,
    this.berlakuMulai,
    this.berlakuSampai,
    this.merk,
    this.tahunPembuatan,
    this.warna,
    this.nomorPolisi,
    this.nomorMesin,
    this.nomorRangka,
    this.nomorBpkb,
    this.bahanBakar,
    this.isiSilinder,
    this.atasNama,
    this.alamatAnak,
    this.alamatOrangTua,
    this.agamaIdAnak,
    this.pekerjaanAyah,
    this.noKk,
    this.kepalaKeluarga,
    this.pendidikanId,
    this.kecamatanKua,
    this.tanggalNikah,
    this.namaPasangan,
    this.agamaIdSuami,
    this.agamaIdIstri,
    this.sebabCerai,
    this.nikPasangan,
    this.tempatLahirPasangan,
    this.tanggalLahirPasangan,
    this.kewarganegaanPasangan,
    this.agamaIdPasangan,
    this.pekerjaanPasangan,
    this.alamatPasangan,
    this.nikAyahPasangan,
    this.namaAyahPasangan,
    this.alasanPermohonan,
    this.kewarganegaraan2,
    this.agama2Id,
    this.negaraTujuan,
    this.statusPekerjaan,
    this.masaKontrak,
    this.memberiIzin,
    this.diberiIzin,
    this.isPemohonWargaDesa,
    this.nikPemohon,
    this.namaPemohon,
    this.tanggalLahirPemohon,
    this.tempatLahirPemohon,
    this.isSaksi1WargaDesa,
    this.isSaksi2WargaDesa,
    this.jalan,
    this.rtRw,
    this.desa,
    this.kecamatan,
    this.kabupaten,
    this.statusTanah,
    this.diperolehDari,
    this.diperolehSejak,
    this.diperolehDengan,
    this.dipergunakan,
    this.batasUtara,
    this.batasSelatan,
    this.batasBarat,
    this.batasTimur,
    this.jenisTanah,
    this.buktiKepemilikanTanah,
    this.nomorBuktiKepemilikan,
    this.asalKepemilikanTanah,
    this.buktiKepemilikanTanahTanah,
    this.golonganDarah,
    this.aktaLahir,
    this.aktaKawin,
    this.tanggalKawin,
    this.aktaCerai,
    this.tanggalCerai,
    this.disabilitasId,
    this.anggotaKeluarga,
    this.isSuamiWargaDesa,
    this.noKkSuami,
    this.pendidikanIdSuami,
    this.istriKe,
    this.anakKeSuami,
    this.perkawinanKeSuami,
    this.pasporSuami,
    this.teleponSuami,
    this.namaOrganisasiSuami,
    this.wargaNegaraSuami,
    this.teleponAyahSuami,
    this.namaOrganisasiAyahSuami,
    this.teleponIbuSuami,
    this.namaOrganisasiIbuSuami,
    this.nikIstriTerdahulu,
    this.namaIstriTerdahulu,
    this.namaAyahIstriTerdahulu,
    this.tempatLahirIstriTerdahulu,
    this.tanggalLahirIstriTerdahulu,
    this.kewarganegaanIstriTerdahulu,
    this.agamaIstriTerdahuluId,
    this.pekerjaanIstriTerdahulu,
    this.alamatIstriTerdahulu,
    this.tanggalMeninggalIstriTerdahulu,
    this.tempatMeninggalIstriTerdahulu,
    this.isIstriWargaDesa,
    this.noKkIstri,
    this.pendidikanIdIstri,
    this.anakKeIstri,
    this.perkawinanKeIstri,
    this.pasporIstri,
    this.teleponIstri,
    this.namaOrganisasiIstri,
    this.wargaNegaraIstri,
    this.teleponAyahIstri,
    this.namaOrganisasiAyahIstri,
    this.teleponIbuIstri,
    this.namaOrganisasiIbuIstri,
    this.nikSuamiTerdahulu,
    this.namaSuamiTerdahulu,
    this.namaAyahSuamiTerdahulu,
    this.tempatLahirSuamiTerdahulu,
    this.tanggalLahirSuamiTerdahulu,
    this.kewarganegaanSuamiTerdahulu,
    this.agamaSuamiTerdahuluId,
    this.pekerjaanSuamiTerdahulu,
    this.alamatSuamiTerdahulu,
    this.tanggalMeninggalSuamiTerdahulu,
    this.tempatMeninggalSuamiTerdahulu,
    this.nikSaksi1,
    this.namaSaksi1,
    this.namaAyahSaksi1,
    this.tempatLahirSaksi1,
    this.tanggalLahirSaksi1,
    this.kewarganegaanSaksi1,
    this.agamaSaksi1Id,
    this.pekerjaanSaksi1,
    this.alamatSaksi1,
    this.namaOrganisasiSaksi1,
    this.nikSaksi2,
    this.namaSaksi2,
    this.namaAyahSaksi2,
    this.tempatLahirSaksi2,
    this.tanggalLahirSaksi2,
    this.kewarganegaanSaksi2,
    this.agamaSaksi2Id,
    this.pekerjaanSaksi2,
    this.alamatSaksi2,
    this.namaOrganisasiSaksi2,
    this.tanggalMelaporPernikahan,
    this.tanggalPemberkataanPernikahan,
    this.agamaPernikahanId,
    this.badanPeradilanPernikahan,
    this.namaOrganisasiPernikahan,
    this.nomorPutusanPengadilan,
    this.tanggalPutusanPengadilan,
    this.namaPemukaAgama,
    this.nomorIzinPerwakilan,
    this.jumlahAnakYangDiakui,
    this.anak,
  });

  factory DataDto.fromJson(Map<String, dynamic> json) {
    return DataDto(
      agama: json['agama'],
      agamaAyahIstri: json['agama_ayah_istri'],
      agamaAyahIstriId: json['agama_ayah_istri_id'],
      agamaAyahSuami: json['agama_ayah_suami'],
      agamaAyahSuamiId: json['agama_ayah_suami_id'],
      agamaIbuIstri: json['agama_ibu_istri'],
      agamaIbuIstriId: json['agama_ibu_istri_id'],
      agamaIbuSuami: json['agama_ibu_suami'],
      agamaIbuSuamiId: json['agama_ibu_suami_id'],
      agamaId: json['agama_id'],
      agamaIstri: json['agama_istri'],
      agamaIstriId: json['agama_istri_id'],
      agamaSuami: json['agama_suami'],
      agamaSuamiId: json['agama_suami_id'],
      alamat: json['alamat'],
      alamat1: json['alamat_1'],
      alamat2: json['alamat_2'],
      alamatAyah: json['alamat_ayah'],
      alamatAyahIstri: json['alamat_ayah_istri'],
      alamatAyahSuami: json['alamat_ayah_suami'],
      alamatIbu: json['alamat_ibu'],
      alamatIbuIstri: json['alamat_ibu_istri'],
      alamatIbuSuami: json['alamat_ibu_suami'],
      alamatIdentitas: json['alamat_identitas'],
      alamatIstri: json['alamat_istri'],
      alamatMendiang: json['alamat_mendiang'],
      alamatOrtu: json['alamat_ortu'],
      alamatPerusahaan: json['alamat_perusahaan'],
      alamatPindah: json['alamat_pindah'],
      alamatSuami: json['alamat_suami'],
      alamatUsaha: json['alamat_usaha'],
      alasanIzin: json['alasan_izin'],
      alasanPindah: json['alasan_pindah'],
      anakKe: json['anak_ke'],
      bidangUsaha: json['bidang_usaha'],
      bidangUsahaId: json['bidang_usaha_id'],
      ciri: json['ciri'],
      createdAt: json['created_at'],
      createdById: json['created_by_id'],
      dasarPengajuan: json['dasar_pengajuan'],
      deletedAt: json['deleted_at'],
      deskripsi: json['deskripsi'],
      diajukanOlehNik: json['diajukan_oleh_nik'],
      dimulai: json['dimulai'],
      diprosesOleh: json['diproses_oleh'],
      diprosesOlehId: json['diproses_oleh_id'],
      disahkanOleh: json['disahkan_oleh'],
      disahkanOlehId: json['disahkan_oleh_id'],
      disposisiKuasaSebagai: json['disposisi_kuasa_sebagai'],
      disposisiKuasaUntuk: json['disposisi_kuasa_untuk'],
      ditugaskanUntuk: json['ditugaskan_untuk'],
      hari: json['hari'],
      hariMeninggal: json['hari_meninggal'],
      hilangSejak: json['hilang_sejak'],
      hubungan: json['hubungan'],
      hubunganId: json['hubungan_id'],
      id: json['id'],
      jabatan: json['jabatan'],
      jabatanPemberi: json['jabatan_pemberi'],
      jabatanPenerima: json['jabatan_penerima'],
      jam: json['jam'],
      jamLahir: json['jam_lahir'],
      jenisBarang: json['jenis_barang'],
      jenisKelamin: json['jenis_kelamin'],
      jenisKelaminAnak: json['jenis_kelamin_anak'],
      jenisKelaminMendiang: json['jenis_kelamin_mendiang'],
      jenisKelaminOrtu: json['jenis_kelamin_ortu'],
      jenisUsaha: json['jenis_usaha'],
      jenisUsahaId: json['jenis_usaha_id'],
      jumlahAnggota: json['jumlah_anggota'],
      jumlahIstri: json['jumlah_istri'],
      jumlahKaryawan: json['jumlah_karyawan'],
      jumlahPengikut: json['jumlah_pengikut'],
      kelasAnak: json['kelas_anak'],
      keperluan: json['keperluan'],
      kewarganegaraan: json['kewarganegaraan'],
      kewarganegaanAyahIstri: json['kewarganegaraan_ayah_istri'],
      kewarganegaanAyahSuami: json['kewarganegaraan_ayah_suami'],
      kewarganegaanIbuIstri: json['kewarganegaraan_ibu_istri'],
      kewarganegaanIbuSuami: json['kewarganegaraan_ibu_suami'],
      kewarganegaanIstri: json['kewarganegaraan_istri'],
      kewarganegaanSuami: json['kewarganegaraan_suami'],
      kontak: json['kontak'],
      lama: json['lama'],
      luasBangunan: json['luas_bangunan'],
      luasTanah: json['luas_tanah'],
      maksdTujuan: json['maksud_tujuan'],
      nama: json['nama'],
      nama1: json['nama_1'],
      nama2: json['nama_2'],
      namaAcara: json['nama_acara'],
      namaAnak: json['nama_anak'],
      namaAyah: json['nama_ayah'],
      namaAyahIstri: json['nama_ayah_istri'],
      namaAyahSuami: json['nama_ayah_suami'],
      namaIbu: json['nama_ibu'],
      namaIbuIstri: json['nama_ibu_istri'],
      namaIbuSuami: json['nama_ibu_suami'],
      namaIstri: json['nama_istri'],
      namaIstriSebelumnya: json['nama_istri_sebelumnya'],
      namaMendiang: json['nama_mendiang'],
      namaOrangHilang: json['nama_orang_hilang'],
      namaOrtu: json['nama_ortu'],
      namaPejabat: json['nama_pejabat'],
      namaPemberi: json['nama_pemberi'],
      namaPenerima: json['nama_penerima'],
      namaPerusahaan: json['nama_perusahaan'],
      namaSekolahAnak: json['nama_sekolah_anak'],
      namaSuami: json['nama_suami'],
      namaSuamiSebelumnya: json['nama_suami_sebelumnya'],
      namaUsaha: json['nama_usaha'],
      nib: json['nib'],
      nik: json['nik'],
      nikAnak: json['nik_anak'],
      nikAyah: json['nik_ayah'],
      nikAyahIstri: json['nik_ayah_istri'],
      nikAyahSuami: json['nik_ayah_suami'],
      nikIbu: json['nik_ibu'],
      nikIbuIstri: json['nik_ibu_istri'],
      nikIbuSuami: json['nik_ibu_suami'],
      nikIstri: json['nik_istri'],
      nikMendiang: json['nik_mendiang'],
      nikOrtu: json['nik_ortu'],
      nikPemberi: json['nik_pemberi'],
      nikPenerima: json['nik_penerima'],
      nikSuami: json['nik_suami'],
      nomor1: json['nomor_1'],
      nomor2: json['nomor_2'],
      nomorAktaPendirian: json['nomor_akta_pendirian'],
      nomorPengajuan: json['nomor_pengajuan'],
      nomorSurat: json['nomor_surat'],
      npwp: json['npwp'],
      organisasiId: json['organisasi_id'],
      pekerjaan: json['pekerjaan'],
      pekerjaanAyahIstri: json['pekerjaan_ayah_istri'],
      pekerjaanAyahSuami: json['pekerjaan_ayah_suami'],
      pekerjaanIbuIstri: json['pekerjaan_ibu_istri'],
      pekerjaanIbuSuami: json['pekerjaan_ibu_suami'],
      pekerjaanIstri: json['pekerjaan_istri'],
      pekerjaanOrtu: json['pekerjaan_ortu'],
      pekerjaanSuami: json['pekerjaan_suami'],
      penanggungJawab: json['penanggung_jawab'],
      penerima: (json['penerima'] as List<dynamic>?)
          ?.map((e) => PenerimaDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      penghasilanOrtu: json['penghasilan_ortu'],
      penyebab: json['penyebab'],
      perbedaan: json['perbedaan'],
      perbedaanId: json['perbedaan_id'],
      peruntukanBangunan: json['peruntukan_bangunan'],
      satuanLama: json['satuan_lama'],
      sebabMeninggal: json['sebab_meninggal'],
      selesai: json['selesai'],
      status: json['status'],
      statusKawin: json['status_kawin'],
      statusKawinId: json['status_kawin_id'],
      statusKawinIstri: json['status_kawin_istri'],
      statusKawinIstriId: json['status_kawin_istri_id'],
      statusKawinSuami: json['status_kawin_suami'],
      statusKawinSuamiId: json['status_kawin_suami_id'],
      statusKepemilikanBangunan: json['status_kepemilikan_bangunan'],
      tanggal: json['tanggal'],
      tanggalKeberangkatan: json['tanggal_keberangkatan'],
      tanggalLahir: json['tanggal_lahir'],
      tanggalLahir1: json['tanggal_lahir_1'],
      tanggalLahir2: json['tanggal_lahir_2'],
      tanggalLahirAnak: json['tanggal_lahir_anak'],
      tanggalLahirAyah: json['tanggal_lahir_ayah'],
      tanggalLahirAyahIstri: json['tanggal_lahir_ayah_istri'],
      tanggalLahirAyahSuami: json['tanggal_lahir_ayah_suami'],
      tanggalLahirIbu: json['tanggal_lahir_ibu'],
      tanggalLahirIbuIstri: json['tanggal_lahir_ibu_istri'],
      tanggalLahirIbuSuami: json['tanggal_lahir_ibu_suami'],
      tanggalLahirIstri: json['tanggal_lahir_istri'],
      tanggalLahirMendiang: json['tanggal_lahir_mendiang'],
      tanggalLahirOrtu: json['tanggal_lahir_ortu'],
      tanggalLahirSuami: json['tanggal_lahir_suami'],
      tanggalMeninggal: json['tanggal_meninggal'],
      tanggunganOrtu: json['tanggungan_ortu'],
      tempat: json['tempat'],
      tempatAcara: json['tempat_acara'],
      tempatKehilangan: json['tempat_kehilangan'],
      tempatLahir: json['tempat_lahir'],
      tempatLahir1: json['tempat_lahir_1'],
      tempatLahir2: json['tempat_lahir_2'],
      tempatLahirAnak: json['tempat_lahir_anak'],
      tempatLahirAyah: json['tempat_lahir_ayah'],
      tempatLahirAyahIstri: json['tempat_lahir_ayah_istri'],
      tempatLahirAyahSuami: json['tempat_lahir_ayah_suami'],
      tempatLahirIbu: json['tempat_lahir_ibu'],
      tempatLahirIbuIstri: json['tempat_lahir_ibu_istri'],
      tempatLahirIbuSuami: json['tempat_lahir_ibu_suami'],
      tempatLahirIstri: json['tempat_lahir_istri'],
      tempatLahirMendiang: json['tempat_lahir_mendiang'],
      tempatLahirOrtu: json['tempat_lahir_ortu'],
      tempatLahirSuami: json['tempat_lahir_suami'],
      tempatMeninggal: json['tempat_meninggal'],
      tempatTujuan: json['tempat_tujuan'],
      tercantum: json['tercantum'],
      tercantum2: json['tercantum_2'],
      tercantumId: json['tercantum_id'],
      tercantumId2: json['tercantum_id_2'],
      terhitungDari: json['terhitung_dari'],
      updatedAt: json['updated_at'],
      updatedById: json['updated_by_id'],
      usia: json['usia'],
      waktuKehilangan: json['waktu_kehilangan'],
      wargaDesa: json['warga_desa'],
      isWargaDesa: json['is_warga_desa'],
      namaJabatanUtama: json['nama_jabatan_utama'],
      bagianSuratId: json['bagian_surat_id'],
      tanggalSurat: json['tanggal_surat'],
      kodeDepan: json['kode_depan'],
      kodeBelakang: json['kode_belakang'],
      nik1: json['nik_1'],
      pekerjaan1: json['pekerjaan_1'],
      jenisKelamin1: json['jenis_kelamin_1'],
      rincianBarang: json['rincian_barang'],
      nik2: json['nik_2'],
      pekerjaan2: json['pekerjaan_2'],
      jenisKelamin2: json['jenis_kelamin_2'],
      agamaIbuId: json['agama_ibu_id'],
      kewarganegaanIbuId: json['kewarganegaraan_ibu_id'],
      pekerjaanIbu: json['pekerjaan_ibu'],
      lamaDikandung: json['lama_dikandung'],
      tujuan: json['tujuan'],
      berlakuMulai: json['berlaku_mulai'],
      berlakuSampai: json['berlaku_sampai'],
      merk: json['merk'],
      tahunPembuatan: json['tahun_pembuatan'],
      warna: json['warna'],
      nomorPolisi: json['nomor_polisi'],
      nomorMesin: json['nomor_mesin'],
      nomorRangka: json['nomor_rangka'],
      nomorBpkb: json['nomor_bpkb'],
      bahanBakar: json['bahan_bakar'],
      isiSilinder: json['isi_silinder'],
      atasNama: json['atas_nama'],
      alamatAnak: json['alamat_anak'],
      alamatOrangTua: json['alamat_orang_tua'],
      agamaIdAnak: json['agama_id_anak'],
      pekerjaanAyah: json['pekerjaan_ayah'],
      noKk: json['no_kk'],
      kepalaKeluarga: json['kepala_keluarga'],
      pendidikanId: json['pendidikan_id'],
      kecamatanKua: json['kecamatan_kua'],
      tanggalNikah: json['tanggal_nikah'],
      namaPasangan: json['nama_pasangan'],
      agamaIdSuami: json['agama_id_suami'],
      agamaIdIstri: json['agama_id_istri'],
      sebabCerai: json['sebab_cerai'],
      nikPasangan: json['nik_pasangan'],
      tempatLahirPasangan: json['tempat_lahir_pasangan'],
      tanggalLahirPasangan: json['tanggal_lahir_pasangan'],
      kewarganegaanPasangan: json['kewarganegaraan_pasangan'],
      agamaIdPasangan: json['agama_id_pasangan'],
      pekerjaanPasangan: json['pekerjaan_pasangan'],
      alamatPasangan: json['alamat_pasangan'],
      nikAyahPasangan: json['nik_ayah_pasangan'],
      namaAyahPasangan: json['nama_ayah_pasangan'],
      alasanPermohonan: json['alasan_permohonan'],
      kewarganegaraan2: json['kewarganegaraan_2'],
      agama2Id: json['agama_2_id'],
      negaraTujuan: json['negara_tujuan'],
      statusPekerjaan: json['status_pekerjaan'],
      masaKontrak: json['masa_kontrak'],
      memberiIzin: json['memberi_izin'],
      diberiIzin: json['diberi_izin'],
      isPemohonWargaDesa: json['is_pemohon_warga_desa'],
      nikPemohon: json['nik_pemohon'],
      namaPemohon: json['nama_pemohon'],
      tanggalLahirPemohon: json['tanggal_lahir_pemohon'],
      tempatLahirPemohon: json['tempat_lahir_pemohon'],
      isSaksi1WargaDesa: json['is_saksi1_warga_desa'],
      isSaksi2WargaDesa: json['is_saksi2_warga_desa'],
      jalan: json['jalan'],
      rtRw: json['rt_rw'],
      desa: json['desa'],
      kecamatan: json['kecamatan'],
      kabupaten: json['kabupaten'],
      statusTanah: json['status_tanah'],
      diperolehDari: json['diperoleh_dari'],
      diperolehSejak: json['diperoleh_sejak'],
      diperolehDengan: json['diperoleh_dengan'],
      dipergunakan: json['dipergunakan'],
      batasUtara: json['batas_utara'],
      batasSelatan: json['batas_selatan'],
      batasBarat: json['batas_barat'],
      batasTimur: json['batas_timur'],
      jenisTanah: json['jenis_tanah'],
      buktiKepemilikanTanah: json['bukti_kepemilikan_tanah'],
      nomorBuktiKepemilikan: json['nomor_bukti_kepemilikan'],
      asalKepemilikanTanah: json['asal_kepemilikan_tanah'],
      buktiKepemilikanTanahTanah: json['bukti_kepemilikan_tanah_tanah'],
      golonganDarah: json['golongan_darah'],
      aktaLahir: json['akta_lahir'],
      aktaKawin: json['akta_kawin'],
      tanggalKawin: json['tanggal_kawin'],
      aktaCerai: json['akta_cerai'],
      tanggalCerai: json['tanggal_cerai'],
      disabilitasId: json['disabilitas_id'],
      anggotaKeluarga: (json['anggota_keluarga'] as List<dynamic>?)
          ?.map((e) => AnggotaKeluargaDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      isSuamiWargaDesa: json['is_suami_warga_desa'],
      noKkSuami: json['no_kk_suami'],
      pendidikanIdSuami: json['pendidikan_id_suami'],
      istriKe: json['istri_ke'],
      anakKeSuami: json['anak_ke_suami'],
      perkawinanKeSuami: json['perkawinan_ke_suami'],
      pasporSuami: json['paspor_suami'],
      teleponSuami: json['telepon_suami'],
      namaOrganisasiSuami: json['nama_organisasi_suami'],
      wargaNegaraSuami: json['warga_negara_suami'],
      teleponAyahSuami: json['telepon_ayah_suami'],
      namaOrganisasiAyahSuami: json['nama_organisasi_ayah_suami'],
      teleponIbuSuami: json['telepon_ibu_suami'],
      namaOrganisasiIbuSuami: json['nama_organisasi_ibu_suami'],
      nikIstriTerdahulu: json['nik_istri_terdahulu'],
      namaIstriTerdahulu: json['nama_istri_terdahulu'],
      namaAyahIstriTerdahulu: json['nama_ayah_istri_terdahulu'],
      tempatLahirIstriTerdahulu: json['tempat_lahir_istri_terdahulu'],
      tanggalLahirIstriTerdahulu: json['tanggal_lahir_istri_terdahulu'],
      kewarganegaanIstriTerdahulu: json['kewarganegaraan_istri_terdahulu'],
      agamaIstriTerdahuluId: json['agama_istri_terdahulu_id'],
      pekerjaanIstriTerdahulu: json['pekerjaan_istri_terdahulu'],
      alamatIstriTerdahulu: json['alamat_istri_terdahulu'],
      tanggalMeninggalIstriTerdahulu: json['tanggal_meninggal_istri_terdahulu'],
      tempatMeninggalIstriTerdahulu: json['tempat_meninggal_istri_terdahulu'],
      isIstriWargaDesa: json['is_istri_warga_desa'],
      noKkIstri: json['no_kk_istri'],
      pendidikanIdIstri: json['pendidikan_id_istri'],
      anakKeIstri: json['anak_ke_istri'],
      perkawinanKeIstri: json['perkawinan_ke_istri'],
      pasporIstri: json['paspor_istri'],
      teleponIstri: json['telepon_istri'],
      namaOrganisasiIstri: json['nama_organisasi_istri'],
      wargaNegaraIstri: json['warga_negara_istri'],
      teleponAyahIstri: json['telepon_ayah_istri'],
      namaOrganisasiAyahIstri: json['nama_organisasi_ayah_istri'],
      teleponIbuIstri: json['telepon_ibu_istri'],
      namaOrganisasiIbuIstri: json['nama_organisasi_ibu_istri'],
      nikSuamiTerdahulu: json['nik_suami_terdahulu'],
      namaSuamiTerdahulu: json['nama_suami_terdahulu'],
      namaAyahSuamiTerdahulu: json['nama_ayah_suami_terdahulu'],
      tempatLahirSuamiTerdahulu: json['tempat_lahir_suami_terdahulu'],
      tanggalLahirSuamiTerdahulu: json['tanggal_lahir_suami_terdahulu'],
      kewarganegaanSuamiTerdahulu: json['kewarganegaraan_suami_terdahulu'],
      agamaSuamiTerdahuluId: json['agama_suami_terdahulu_id'],
      pekerjaanSuamiTerdahulu: json['pekerjaan_suami_terdahulu'],
      alamatSuamiTerdahulu: json['alamat_suami_terdahulu'],
      tanggalMeninggalSuamiTerdahulu: json['tanggal_meninggal_suami_terdahulu'],
      tempatMeninggalSuamiTerdahulu: json['tempat_meninggal_suami_terdahulu'],
      nikSaksi1: json['nik_saksi1'],
      namaSaksi1: json['nama_saksi1'],
      namaAyahSaksi1: json['nama_ayah_saksi1'],
      tempatLahirSaksi1: json['tempat_lahir_saksi1'],
      tanggalLahirSaksi1: json['tanggal_lahir_saksi1'],
      kewarganegaanSaksi1: json['kewarganegaraan_saksi1'],
      agamaSaksi1Id: json['agama_saksi1_id'],
      pekerjaanSaksi1: json['pekerjaan_saksi1'],
      alamatSaksi1: json['alamat_saksi1'],
      namaOrganisasiSaksi1: json['nama_organisasi_saksi1'],
      nikSaksi2: json['nik_saksi2'],
      namaSaksi2: json['nama_saksi2'],
      namaAyahSaksi2: json['nama_ayah_saksi2'],
      tempatLahirSaksi2: json['tempat_lahir_saksi2'],
      tanggalLahirSaksi2: json['tanggal_lahir_saksi2'],
      kewarganegaanSaksi2: json['kewarganegaraan_saksi2'],
      agamaSaksi2Id: json['agama_saksi2_id'],
      pekerjaanSaksi2: json['pekerjaan_saksi2'],
      alamatSaksi2: json['alamat_saksi2'],
      namaOrganisasiSaksi2: json['nama_organisasi_saksi2'],
      tanggalMelaporPernikahan: json['tanggal_melapor_pernikahan'],
      tanggalPemberkataanPernikahan: json['tanggal_pemberkatan_pernikahan'],
      agamaPernikahanId: json['agama_pernikahan_id'],
      badanPeradilanPernikahan: json['badan_peradilan_pernikahan'],
      namaOrganisasiPernikahan: json['nama_organisasi_pernikahan'],
      nomorPutusanPengadilan: json['nomor_putusan_pengadilan'],
      tanggalPutusanPengadilan: json['tanggal_putusan_pengadilan'],
      namaPemukaAgama: json['nama_pemuka_agama'],
      nomorIzinPerwakilan: json['nomor_izin_perwakilan'],
      jumlahAnakYangDiakui: json['jumlah_anak_yang_diakui'],
      anak: (json['anak'] as List<dynamic>?)
          ?.map((e) => AnakDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class PenerimaDto {
  final String? jabatan;
  final String? nama;
  final String? nik;

  PenerimaDto({
    this.jabatan,
    this.nama,
    this.nik,
  });

  factory PenerimaDto.fromJson(Map<String, dynamic> json) {
    return PenerimaDto(
      jabatan: json['jabatan'],
      nama: json['nama'],
      nik: json['nik'],
    );
  }

  Map<String, dynamic> toJson() => {
    'jabatan': jabatan,
    'nama': nama,
    'nik': nik,
  };
}

class AnggotaKeluargaDto {
  final String? nik;
  final String? nama;
  final String? jeniKelamin;
  final String? hubungan;
  final String? tempatLahir;
  final String? tanggalLahir;
  final String? noKk;
  final String? keterangan;

  AnggotaKeluargaDto({
    this.nik,
    this.nama,
    this.jeniKelamin,
    this.hubungan,
    this.tempatLahir,
    this.tanggalLahir,
    this.noKk,
    this.keterangan,
  });

  factory AnggotaKeluargaDto.fromJson(Map<String, dynamic> json) {
    return AnggotaKeluargaDto(
      nik: json['nik'],
      nama: json['nama'],
      jeniKelamin: json['jeni_kelamin'],
      hubungan: json['hubungan'],
      tempatLahir: json['tempat_lahir'],
      tanggalLahir: json['tanggal_lahir'],
      noKk: json['no_kk'],
      keterangan: json['keterangan'],
    );
  }

  Map<String, dynamic> toJson() => {
    'nik': nik,
    'nama': nama,
    'jeni_kelamin': jeniKelamin,
    'hubungan': hubungan,
    'tempat_lahir': tempatLahir,
    'tanggal_lahir': tanggalLahir,
    'no_kk': noKk,
    'keterangan': keterangan,
  };
}

class AnakDto {
  final String? namaAnak;
  final String? tanggalLahirAnak;
  final String? noAktaAnak;

  AnakDto({
    this.namaAnak,
    this.tanggalLahirAnak,
    this.noAktaAnak,
  });

  factory AnakDto.fromJson(Map<String, dynamic> json) {
    return AnakDto(
      namaAnak: json['nama_anak'],
      tanggalLahirAnak: json['tanggal_lahir_anak'],
      noAktaAnak: json['no_akta_anak'],
    );
  }

  Map<String, dynamic> toJson() => {
    'nama_anak': namaAnak,
    'tanggal_lahir_anak': tanggalLahirAnak,
    'no_akta_anak': noAktaAnak,
  };
}

class MetaDto {
  final String jenisSurat;

  MetaDto({required this.jenisSurat});

  factory MetaDto.fromJson(Map<String, dynamic> json) {
    return MetaDto(
      jenisSurat: json['jenis_surat'],
    );
  }

  Map<String, dynamic> toJson() => {
    'jenis_surat': jenisSurat,
  };
}
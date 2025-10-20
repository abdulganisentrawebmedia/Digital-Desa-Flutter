class ApiConstants {
  // static const String baseUrl = 'https://devsuperadmin-digitaldesa.avnet.id';
  static const String baseUrl = 'https://prod-client.avnet.id';

  // ======================
  // AUTH ENDPOINTS
  // ======================
  static const String login = '/warga-desa/auth/login';
  static const String logout = '/warga-desa/auth/logout';
  static const String userInfo = '/warga-desa/auth/user-info';

  // Portal Desa (OTP dan Reset Password)
  static const String requestOtp = '/portal-desa/auth/request-otp';
  static const String validateOtp = '/portal-desa/auth/is-otp-valid';
  static const String resetPassword = '/portal-desa/auth/reset-password';

  // FCM Token (notifikasi)
  static const String registerFcmToken = '/warga-desa/auth/fcm-token';

  // ======================
  // PROFILE ENDPOINTS
  // ======================
  static const String profile = '/warga-desa/profile';
  static const String updateProfile = '/warga-desa/profile';
  static const String changePassword = '/warga-desa/profile/change-password';

  // ======================
  // FILE ENDPOINTS
  // ======================
  static const String clientFile = '/client-file';
  static const String clientFileById = '/client-file/:id';

  // ======================
  // NOTIFICATION ENDPOINTS
  // ======================
  static const String notifications = '/warga-desa/notifications';
  static const String notificationInfo = '/warga-desa/notifikasi';

  // ======================
  // MISC
  // ======================
  static const String forgotPassword = '/warga-desa/auth/forgot-password';

  // ======================
  // REFERENCE DATA ENDPOINTS
  // ======================
  static const String refTercantumIdentitas = '/warga-desa/ref/tercantum-identitas';
  static const String refPerbedaanIdentitas = '/warga-desa/ref/perbedaan-identitas';
  static const String refDisahkanOleh = '/warga-desa/ref/disahkan-oleh';
  static const String refAgama = '/warga-desa/ref/agama';
  static const String refJenisUsaha = '/warga-desa/ref/jenis-usaha';
  static const String refBidangUsaha = '/warga-desa/ref/bidang-usaha';
  static const String refStatusKawin = '/warga-desa/ref/status-kawin';
  static const String refPendidikan = '/warga-desa/ref/pendidikan';
  static const String refHubungan = '/warga-desa/ref/hubungan';
  static const String refDisabilitas = '/warga-desa/ref/disabilitas';

  // ======================
  // SURAT ENDPOINTS (GENERIC)
  // ======================
  static const String suratList = '/warga-desa/surat';
  static const String suratDetail = '/warga-desa/surat/:id';
  static const String suratCreate = '/warga-desa/surat';
  static const String suratUpdate = '/warga-desa/surat/:id';

  // ======================
  // SURAT ENDPOINTS (SPESIFIK)
  // ======================
  static const String suratBepergian = '/warga-desa/surat/bepergian';
  static const String suratBedaIdentitas = '/warga-desa/surat/beda-identitas';
  static const String suratBelumMemilikiPBB = '/warga-desa/surat/belum-memiliki-pbb';
  static const String suratDomisili = '/warga-desa/surat/domisili';
  static const String suratDomisiliPerusahaan = '/warga-desa/surat/domisili-perusahaan';
  static const String suratGhaib = '/warga-desa/surat/ghaib';
  static const String suratIzinTidakKerja = '/warga-desa/surat/izin-tidak-kerja';
  static const String suratJamkesos = '/warga-desa/surat/jamkesos';
  static const String suratJandaDuda = '/warga-desa/surat/janda-duda';
  static const String suratJualBeli = '/warga-desa/surat/jual-beli';
  static const String suratKehilangan = '/warga-desa/surat/kehilangan';
  static const String suratKelahiran = '/warga-desa/surat/kelahiran';
  static const String suratKematian = '/warga-desa/surat/kematian';
  static const String suratKeramaian = '/warga-desa/surat/keramaian';
  static const String suratKTPDalamProses = '/warga-desa/surat/ktp-dalam-proses';
  static const String suratKuasa = '/warga-desa/surat/kuasa';
  static const String suratPenghasilan = '/warga-desa/surat/penghasilan';
  static const String suratPernikahan = '/warga-desa/surat/pernikahan';
  static const String suratPindahDomisili = '/warga-desa/surat/pindah-domisili';
  static const String suratResiKTPSementara = '/warga-desa/surat/resi-ktp-sementara';
  static const String suratSKCK = '/warga-desa/surat/skck';
  static const String suratStatusPerkawinan = '/warga-desa/surat/status-perkawinan';
  static const String suratTidakMampu = '/warga-desa/surat/tidak-mampu';
  static const String suratTugas = '/warga-desa/surat/tugas';
  static const String suratUsaha = '/warga-desa/surat/usaha';
  static const String suratLahirMati = '/warga-desa/surat/lahir-mati';
  static const String suratPergiKawin = '/warga-desa/surat/pergi-kawin';
  static const String suratWaliHakim = '/warga-desa/surat/wali-hakim';
  static const String suratKepemilikanKendaraan = '/warga-desa/surat/kepemilikan-kendaraan';
  static const String suratAktaLahir = '/warga-desa/surat/akta-lahir';
  static const String suratBelumMemilikiAktaLahir = '/warga-desa/surat/belum-memiliki-akta-lahir';
  static const String suratDuplikatKelahiran = '/warga-desa/surat/duplikat-kelahiran';
  static const String suratDuplikatSuratNikah = '/warga-desa/surat/duplikat-surat-nikah';
  static const String suratPermohonanCerai = '/warga-desa/surat/permohonan-cerai';
  static const String suratPengantarCeraiRujuk = '/warga-desa/surat/cerai-rujuk';
  static const String suratPermohonanKK = '/warga-desa/surat/permohonan-kk';
  static const String suratIzinOrangTua = '/warga-desa/surat/sk-izin';
  static const String suratPernyataanSporadik = '/warga-desa/surat/fisik-tanah';
  static const String suratPerubahanKK = '/warga-desa/surat/perubahan-kk';
  static const String suratKepemilikanTanah = '/warga-desa/surat/kepemilikan-tanah';
  static const String suratBiodataWarga = '/warga-desa/surat/biodata';
  static const String suratPasLintasBatas = '/warga-desa/surat/lintas-batas';
  static const String suratNikahNonMuslim = '/warga-desa/surat/nikah-non-muslim';
}

class ApiConstants {
  static const String baseUrl = 'https://devsuperadmin-digitaldesa.avnet.id';

  // Auth endpoints
  static const String login = '/warga-desa/auth/login';
  static const String logout = '/warga-desa/auth/logout';
  static const String forgotPassword = '/warga-desa/auth/forgot-password';
  static const String resetPassword = '/warga-desa/auth/reset-password';

  // Surat endpoints
  static const String suratList = '/warga-desa/surat';
  static const String suratDetail = '/warga-desa/surat/:id';
  static const String suratCreate = '/warga-desa/surat';
  static const String suratUpdate = '/warga-desa/surat/:id';

  // Profile endpoints
  static const String profile = '/warga-desa/profile';
  static const String updateProfile = '/warga-desa/profile';
  static const String changePassword = '/warga-desa/profile/change-password';

  // Notification endpoints
  static const String registerFcmToken = '/warga-desa/notifications/register-token';
  static const String notifications = '/warga-desa/notifications';
}
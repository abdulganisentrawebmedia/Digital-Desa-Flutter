import 'package:go_router/go_router.dart';
import '../../presentation/features/auth/forgot_password/forgot_password_page.dart';
import '../../presentation/features/auth/login/page/login_page.dart';
import '../../presentation/root/root_page.dart';
import '../../presentation/features/home/home_page.dart';
import '../../presentation/features/surat/surat_page.dart';
import '../../presentation/features/profile/profile_page.dart';

class AppRouter {
  static const String login = '/login';
  static const String forgotPassword = '/forgot-password';
  static const String root = '/';
  static const String home = '/home';
  static const String surat = '/surat';
  static const String profile = '/profile';

  static final GoRouter router = GoRouter(
    initialLocation: login,
    routes: [
      GoRoute(
        path: login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: forgotPassword,
        builder: (context, state) => const ForgotPasswordPage(),
      ),
      GoRoute(
        path: root,
        builder: (context, state) => const RootPage(),
      ),
    ],
  );
}
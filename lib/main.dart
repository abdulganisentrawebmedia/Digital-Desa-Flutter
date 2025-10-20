import 'package:digital_desa/presentation/features/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'app/di/injection.dart';
import 'app/router/app_router.dart';
import 'app/theme/app_theme.dart';
// import 'core/services/notification_service.dart';
import 'presentation/features/auth/login/bloc/auth_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase - Comment dulu
  // await Firebase.initializeApp();

  // Initialize Dependency Injection
  await configureDependencies();

  // Initialize Notification Service - Comment dulu
  // await getIt<NotificationService>().initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AuthBloc>()),
        BlocProvider(create: (_) => getIt<HomeBloc>()),
      ],
      child: MaterialApp.router(
        title: 'Digital Desa',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
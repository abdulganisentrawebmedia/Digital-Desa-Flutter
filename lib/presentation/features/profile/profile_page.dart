import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router/app_router.dart';
import '../../../app/theme/app_theme.dart';
import '../auth/login/bloc/auth_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthInitial) {
            context.go(AppRouter.login);
          }
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Profile Header
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                color: AppTheme.primaryColor,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: AppTheme.primaryColor,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'john.doe@email.com',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),

              // Menu Items
              const SizedBox(height: 8),
              _buildMenuItem(
                icon: Icons.person_outline,
                title: 'Edit Profil',
                onTap: () {
                  // TODO: Navigate to edit profile
                },
              ),
              _buildMenuItem(
                icon: Icons.lock_outline,
                title: 'Ubah Password',
                onTap: () {
                  // TODO: Navigate to change password
                },
              ),
              // _buildMenuItem(
              //   icon: Icons.notifications_outline,
              //   title: 'Notifikasi',
              //   onTap: () {
              //     // TODO: Navigate to notification settings
              //   },
              // ),
              _buildMenuItem(
                icon: Icons.language_outlined,
                title: 'Bahasa',
                trailing: const Text('Indonesia'),
                onTap: () {
                  // TODO: Navigate to language settings
                },
              ),
              _buildMenuItem(
                icon: Icons.help_outline,
                title: 'Bantuan',
                onTap: () {
                  // TODO: Navigate to help
                },
              ),
              _buildMenuItem(
                icon: Icons.info_outline,
                title: 'Tentang Aplikasi',
                onTap: () {
                  _showAboutDialog(context);
                },
              ),
              const Divider(),
              _buildMenuItem(
                icon: Icons.logout,
                title: 'Keluar',
                iconColor: AppTheme.errorColor,
                titleColor: AppTheme.errorColor,
                onTap: () {
                  _showLogoutDialog(context);
                },
              ),
              const SizedBox(height: 16),
              Text(
                'Versi 1.0.0',
                style: TextStyle(
                  fontSize: 12,
                  color: AppTheme.textSecondaryColor,
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    Widget? trailing,
    Color? iconColor,
    Color? titleColor,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: iconColor ?? AppTheme.textPrimaryColor,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: titleColor ?? AppTheme.textPrimaryColor,
        ),
      ),
      trailing: trailing ??
          Icon(
            Icons.chevron_right,
            color: AppTheme.textSecondaryColor,
          ),
      onTap: onTap,
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Tentang Aplikasi'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Digital Desa',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text('Versi 1.0.0'),
            SizedBox(height: 16),
            Text(
              'Aplikasi Sistem Pengajuan Surat Digital untuk memudahkan warga dalam mengajukan berbagai jenis surat kepada pemerintah desa.',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Tutup'),
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Keluar'),
        content: const Text('Apakah Anda yakin ingin keluar dari aplikasi?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Batal'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              context.read<AuthBloc>().add(LogoutRequested());
            },
            child: Text(
              'Keluar',
              style: TextStyle(color: AppTheme.errorColor),
            ),
          ),
        ],
      ),
    );
  }
}
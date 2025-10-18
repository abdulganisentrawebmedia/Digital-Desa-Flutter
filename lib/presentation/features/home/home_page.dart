import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/theme/app_theme.dart';
import 'bloc/home_bloc.dart';
import 'bloc/home_event.dart';
import 'bloc/home_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Load initial data
    context.read<HomeBloc>().add(LoadHomeData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is HomeError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.message,
                    style: TextStyle(color: AppTheme.errorColor),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(LoadHomeData());
                    },
                    child: const Text('Coba Lagi'),
                  ),
                ],
              ),
            );
          }

          if (state is HomeLoaded) {
            return RefreshIndicator(
              onRefresh: () async {
                context.read<HomeBloc>().add(RefreshHomeData());
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Section with Greeting
                    _buildHeaderSection(context, state),

                    const SizedBox(height: 16),

                    // Village Info Card
                    _buildVillageInfoCard(context, state),

                    const SizedBox(height: 24),

                    // Services Grid
                    _buildServicesGrid(context),

                    const SizedBox(height: 100), // Bottom spacing for navigation bar
                  ],
                ),
              ),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }

  Widget _buildHeaderSection(BuildContext context, HomeLoaded state) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _getGreeting(),
                style: TextStyle(
                  fontSize: 14,
                  color: AppTheme.textSecondaryColor,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                state.userInfo?.namaWarga ?? '-',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textPrimaryColor,
                ),
              ),
            ],
          ),
          // Notification Button
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_outlined),
                iconSize: 28,
                color: AppTheme.textPrimaryColor,
                onPressed: () {
                  // Navigate to notifications
                },
              ),
              if (state.unreadNotificationsCount > 0)
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: AppTheme.errorColor,
                      shape: BoxShape.circle,
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: Text(
                      state.unreadNotificationsCount > 99
                          ? '99+'
                          : '${state.unreadNotificationsCount}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVillageInfoCard(BuildContext context, HomeLoaded state) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          // Navigate to village info detail
        },
        borderRadius: BorderRadius.circular(12),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.userInfo?.desa ?? 'Desa Sukaramai Baru',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    state.userInfo?.kecamatan ?? 'Kecamatan Terong Belanda',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppTheme.textSecondaryColor,
                    ),
                  ),
                  Text(
                    state.userInfo?.kabupaten ?? 'Kabupaten Kebun Subur',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppTheme.textSecondaryColor,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: AppTheme.textSecondaryColor,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServicesGrid(BuildContext context) {
    final services = [
      {
        'icon': Icons.description_outlined,
        'label': 'Layanan\nPersuratan',
        'color': const Color(0xFFFFB800),
        'enabled': true,
        'route': '/surat',
      },
      {
        'icon': Icons.report_outlined,
        'label': 'Lapor\nPemdes',
        'color': const Color(0xFFFFB800),
        'enabled': false,
      },
      {
        'icon': Icons.article_outlined,
        'label': 'Artikel &\nBlog Desa',
        'color': const Color(0xFFFFB800),
        'enabled': false,
      },
      {
        'icon': Icons.volunteer_activism_outlined,
        'label': 'Donasi\nDesa',
        'color': const Color(0xFFFFB800),
        'enabled': false,
      },
      {
        'icon': Icons.local_hospital_outlined,
        'label': 'Layanan\nKesehatan',
        'color': const Color(0xFFFFB800),
        'enabled': false,
      },
      {
        'icon': Icons.store_outlined,
        'label': 'Bumdes &\nPasar Desa',
        'color': const Color(0xFF7B61FF),
        'enabled': false,
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1,
        ),
        itemCount: services.length,
        itemBuilder: (context, index) {
          final service = services[index];
          final enabled = service['enabled'] as bool;

          return _buildServiceCard(
            context,
            icon: service['icon'] as IconData,
            label: service['label'] as String,
            color: service['color'] as Color,
            enabled: enabled,
            onTap: enabled
                ? () {
              if (service['route'] != null) {
                Navigator.pushNamed(context, service['route'] as String);
              }
            }
                : null,
          );
        },
      ),
    );
  }

  Widget _buildServiceCard(
      BuildContext context, {
        required IconData icon,
        required String label,
        required Color color,
        required bool enabled,
        VoidCallback? onTap,
      }) {
    return InkWell(
      onTap: enabled ? onTap : null,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: enabled ? Colors.white : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
          boxShadow: enabled
              ? [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ]
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: enabled ? color.withOpacity(0.1) : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                size: 28,
                color: enabled ? color : Colors.grey.shade500,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: enabled
                    ? AppTheme.textPrimaryColor
                    : AppTheme.textSecondaryColor,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getGreeting() {
    final hour = DateTime.now().hour;

    if (hour >= 5 && hour < 11) {
      return 'Halo selamat pagi 🌅';
    } else if (hour >= 11 && hour < 15) {
      return 'Halo selamat siang ☀️';
    } else if (hour >= 15 && hour < 18) {
      return 'Halo selamat sore 🌇';
    } else {
      return 'Halo selamat malam 🌙';
    }
  }
}
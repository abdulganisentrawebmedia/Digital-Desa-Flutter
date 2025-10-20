import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/theme/app_theme.dart';
import '../../../domain/entities/user_entity.dart';
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
    _loadInitialData();
  }

  void _loadInitialData() {
    context.read<HomeBloc>().add(LoadHomeData());
  }

  void _handleRefresh() {
    context.read<HomeBloc>().add(RefreshHomeData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state is HomeError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return switch (state) {
              HomeLoading() => const _LoadingWidget(),
              HomeError() => _ErrorWidget(onRetry: _loadInitialData),
              HomeLoaded() => _LoadedWidget(
                state: state,
                onRefresh: _handleRefresh,
              ),
              _ => const SizedBox.shrink(),
            };
          },
        ),
      ),
    );
  }
}

// ============= LOADING WIDGET =============
class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

// ============= ERROR WIDGET =============
class _ErrorWidget extends StatelessWidget {
  final VoidCallback onRetry;

  const _ErrorWidget({required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64,
            color: AppTheme.errorColor,
          ),
          const SizedBox(height: 16),
          Text(
            'Terjadi Kesalahan',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.textPrimaryColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Silakan coba lagi',
            style: TextStyle(
              fontSize: 14,
              color: AppTheme.textSecondaryColor,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: onRetry,
            child: const Text('Coba Lagi'),
          ),
        ],
      ),
    );
  }
}

// ============= LOADED WIDGET =============
class _LoadedWidget extends StatelessWidget {
  final HomeLoaded state;
  final VoidCallback onRefresh;

  const _LoadedWidget({
    required this.state,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        onRefresh();
        await Future.delayed(const Duration(seconds: 1));
      },
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _HeaderSection(userInfo: state.userInfo),
            const SizedBox(height: 16),
            _VillageInfoCard(userInfo: state.userInfo),
            const SizedBox(height: 24),
            const _ServicesGrid(),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

// ============= HEADER SECTION =============
class _HeaderSection extends StatelessWidget {
  final UserEntity? userInfo;

  const _HeaderSection({required this.userInfo});

  @override
  Widget build(BuildContext context) {
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
                userInfo?.namaWarga ?? '-',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textPrimaryColor,
                ),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            iconSize: 28,
            color: AppTheme.textPrimaryColor,
            onPressed: () {
              Navigator.pushNamed(context, '/notifications');
            },
          ),
        ],
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

// ============= VILLAGE INFO CARD =============
class _VillageInfoCard extends StatelessWidget {
  final UserEntity? userInfo;

  const _VillageInfoCard({required this.userInfo});

  @override
  Widget build(BuildContext context) {
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
          Navigator.pushNamed(context, '/village-info');
        },
        borderRadius: BorderRadius.circular(12),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   userInfo?.desa ?? 'Desa Sukaramai Baru',
                  //   style: const TextStyle(
                  //     fontSize: 16,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  // const SizedBox(height: 4),
                  // Text(
                  //   userInfo?.kecamatan ?? 'Kecamatan Terong Belanda',
                  //   style: TextStyle(
                  //     fontSize: 12,
                  //     color: AppTheme.textSecondaryColor,
                  //   ),
                  // ),
                  // Text(
                  //   userInfo?.kabupaten ?? 'Kabupaten Kebun Subur',
                  //   style: TextStyle(
                  //     fontSize: 12,
                  //     color: AppTheme.textSecondaryColor,
                  //   ),
                  // ),
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
}

// ============= SERVICES GRID =============
class _ServicesGrid extends StatelessWidget {
  const _ServicesGrid();

  static const List<ServiceItem> services = [
    ServiceItem(
      icon: Icons.description_outlined,
      label: 'Layanan\nPersuratan',
      color: Color(0xFFFFB800),
      enabled: true,
      route: '/surat',
    ),
    ServiceItem(
      icon: Icons.report_outlined,
      label: 'Lapor\nPemdes',
      color: Color(0xFFFFB800),
      enabled: false,
    ),
    ServiceItem(
      icon: Icons.article_outlined,
      label: 'Artikel &\nBlog Desa',
      color: Color(0xFFFFB800),
      enabled: false,
    ),
    ServiceItem(
      icon: Icons.volunteer_activism_outlined,
      label: 'Donasi\nDesa',
      color: Color(0xFFFFB800),
      enabled: false,
    ),
    ServiceItem(
      icon: Icons.local_hospital_outlined,
      label: 'Layanan\nKesehatan',
      color: Color(0xFFFFB800),
      enabled: false,
    ),
    ServiceItem(
      icon: Icons.store_outlined,
      label: 'Bumdes &\nPasar Desa',
      color: Color(0xFF7B61FF),
      enabled: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
          return _ServiceCard(service: services[index]);
        },
      ),
    );
  }
}

// ============= SERVICE CARD =============
class _ServiceCard extends StatelessWidget {
  final ServiceItem service;

  const _ServiceCard({required this.service});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: service.enabled && service.route != null
          ? () => Navigator.pushNamed(context, service.route!)
          : null,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: service.enabled ? Colors.white : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
          boxShadow: service.enabled
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
                color: service.enabled
                    ? service.color.withOpacity(0.1)
                    : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                service.icon,
                size: 28,
                color: service.enabled
                    ? service.color
                    : Colors.grey.shade500,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              service.label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: service.enabled
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
}

// ============= SERVICE ITEM MODEL =============
class ServiceItem {
  final IconData icon;
  final String label;
  final Color color;
  final bool enabled;
  final String? route;

  const ServiceItem({
    required this.icon,
    required this.label,
    required this.color,
    required this.enabled,
    this.route,
  });
}
import 'package:flutter/material.dart';

import '../../../app/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              // TODO: Navigate to notifications
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Card
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppTheme.primaryColor, AppTheme.secondaryColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Selamat Datang,',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Warga Desa Sukamaju',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Quick Actions
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Layanan Surat',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.textPrimaryColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    children: [
                      _buildServiceCard(
                        icon: Icons.description,
                        label: 'Surat\nKeterangan',
                        onTap: () {},
                      ),
                      _buildServiceCard(
                        icon: Icons.business,
                        label: 'Surat\nUsaha',
                        onTap: () {},
                      ),
                      _buildServiceCard(
                        icon: Icons.people,
                        label: 'Surat\nDomisili',
                        onTap: () {},
                      ),
                      _buildServiceCard(
                        icon: Icons.family_restroom,
                        label: 'Kartu\nKeluarga',
                        onTap: () {},
                      ),
                      _buildServiceCard(
                        icon: Icons.card_membership,
                        label: 'KTP',
                        onTap: () {},
                      ),
                      _buildServiceCard(
                        icon: Icons.more_horiz,
                        label: 'Lainnya',
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Info Section
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informasi Desa',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.textPrimaryColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildInfoCard(
                    title: 'Pengumuman Terbaru',
                    description: 'Jadwal pelayanan administrasi pada hari libur nasional',
                    date: '5 Okt 2025',
                  ),
                  const SizedBox(height: 12),
                  _buildInfoCard(
                    title: 'Informasi Penting',
                    description: 'Persyaratan pengajuan surat telah diperbarui',
                    date: '3 Okt 2025',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildServiceCard({
  required IconData icon,
  required String label,
  required VoidCallback onTap,
}) {
  return Card(
    elevation: 2,
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 32, color: AppTheme.primaryColor),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildInfoCard({
  required String title,
  required String description,
  required String date,
}) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 12,
                  color: AppTheme.textSecondaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: AppTheme.textSecondaryColor,
            ),
          ),
        ],
      ),
    ),
  );
}
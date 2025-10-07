import 'package:flutter/material.dart';

import '../../../app/theme/app_theme.dart';

class SuratPage extends StatefulWidget {
  const SuratPage({super.key});

  @override
  State<SuratPage> createState() => _SuratPageState();
}

class _SuratPageState extends State<SuratPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aktivitas Surat'),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          tabs: const [
            Tab(text: 'Proses'),
            Tab(text: 'Selesai'),
            Tab(text: 'Ditolak'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildSuratList('proses'),
          _buildSuratList('selesai'),
          _buildSuratList('ditolak'),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // TODO: Navigate to create surat
        },
        icon: const Icon(Icons.add),
        label: const Text('Ajukan Surat'),
        backgroundColor: AppTheme.primaryColor,
      ),
    );
  }

  Widget _buildSuratList(String status) {
    // Dummy data
    final items = status == 'proses'
        ? [
      {
        'title': 'Surat Keterangan Domisili',
        'date': '5 Okt 2025',
        'status': 'Sedang Diproses',
        'statusColor': AppTheme.warningColor,
      },
      {
        'title': 'Surat Keterangan Usaha',
        'date': '3 Okt 2025',
        'status': 'Menunggu Verifikasi',
        'statusColor': AppTheme.warningColor,
      },
    ]
        : status == 'selesai'
        ? [
      {
        'title': 'Surat Keterangan Tidak Mampu',
        'date': '1 Okt 2025',
        'status': 'Selesai',
        'statusColor': AppTheme.successColor,
      },
    ]
        : [
      {
        'title': 'Surat Pengantar',
        'date': '28 Sep 2025',
        'status': 'Ditolak',
        'statusColor': AppTheme.errorColor,
      },
    ];

    if (items.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.inbox_outlined,
              size: 80,
              color: Colors.grey.shade300,
            ),
            const SizedBox(height: 16),
            Text(
              'Belum ada surat',
              style: TextStyle(
                fontSize: 16,
                color: AppTheme.textSecondaryColor,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: InkWell(
            onTap: () {
              // TODO: Navigate to detail
            },
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          item['title'] as String,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: (item['statusColor'] as Color).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          item['status'] as String,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: item['statusColor'] as Color,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 14,
                        color: AppTheme.textSecondaryColor,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        item['date'] as String,
                        style: TextStyle(
                          fontSize: 14,
                          color: AppTheme.textSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                  if (status == 'proses') ...[
                    const SizedBox(height: 12),
                    LinearProgressIndicator(
                      value: 0.6,
                      backgroundColor: Colors.grey.shade200,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        AppTheme.primaryColor,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
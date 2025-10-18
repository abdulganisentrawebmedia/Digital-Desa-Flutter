import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../features/home/home_page.dart';
import '../features/surat/surat_page.dart';
import '../features/profile/profile_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const SuratPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: _buildNavIcon('resources/icons/beranda_inactive.svg'),
            activeIcon: _buildNavIcon('resources/icons/beranda_active.svg'),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: _buildNavIcon('resources/icons/aktivitas_inactive.svg'),
            activeIcon: _buildNavIcon('resources/icons/aktivitas_active.svg'),
            label: 'Aktivitas',
          ),
          BottomNavigationBarItem(
            icon: _buildNavIcon('resources/icons/profil_inactive.svg'),
            activeIcon: _buildNavIcon('resources/icons/profil_active.svg'),
            label: 'Profil',
          ),
        ],
      ),
    );
  }

  Widget _buildNavIcon(String assetPath) {
    return SvgPicture.asset(
      assetPath,
      width: 24,
      height: 24,
      // Tidak ada colorFilter - gunakan warna asli dari SVG
    );
  }
}
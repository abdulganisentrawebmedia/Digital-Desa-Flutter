import 'package:flutter/material.dart';

class VillageIllustration extends StatelessWidget {
  const VillageIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(
        'resources/images/village_illustration.png',
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          return const _FallbackVillageIllustration();
        },
      ),
    );
  }
}

class _FallbackVillageIllustration extends StatelessWidget {
  const _FallbackVillageIllustration();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue.shade50,
            Colors.white,
          ],
        ),
      ),
      child: Stack(
        children: [
          // Clouds
          Positioned(
            top: 20,
            left: 30,
            child: _Cloud(width: 40, height: 20),
          ),
          Positioned(
            top: 30,
            right: 50,
            child: _Cloud(width: 50, height: 25),
          ),

          // Houses
          Positioned(
            bottom: 20,
            left: 40,
            child: _House(
              color: Colors.red.shade400,
              width: 45,
              height: 50,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 120,
            child: _House(
              color: Colors.blue.shade400,
              width: 50,
              height: 55,
            ),
          ),
          Positioned(
            bottom: 20,
            right: 40,
            child: _House(
              color: Colors.orange.shade400,
              width: 45,
              height: 50,
            ),
          ),

          // Trees
          Positioned(
            bottom: 20,
            left: 90,
            child: _Tree(
              color: Colors.green.shade400,
              width: 25,
              height: 40,
            ),
          ),
          Positioned(
            bottom: 20,
            right: 90,
            child: _Tree(
              color: Colors.green.shade500,
              width: 30,
              height: 45,
            ),
          ),
        ],
      ),
    );
  }
}

class _Cloud extends StatelessWidget {
  final double width;
  final double height;

  const _Cloud({
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(height / 2),
      ),
    );
  }
}

class _House extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  const _House({
    required this.color,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomPaint(
          size: Size(width, height * 0.4),
          painter: _TrianglePainter(color),
        ),
        Container(
          width: width * 0.8,
          height: height * 0.6,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300, width: 1),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(2),
              bottomRight: Radius.circular(2),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width * 0.3,
                height: height * 0.35,
                decoration: BoxDecoration(
                  color: Colors.brown.shade300,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Tree extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  const _Tree({
    required this.color,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: width,
          height: height * 0.7,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: width * 0.25,
          height: height * 0.3,
          color: Colors.brown.shade400,
        ),
      ],
    );
  }
}

class _TrianglePainter extends CustomPainter {
  final Color color;

  _TrianglePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
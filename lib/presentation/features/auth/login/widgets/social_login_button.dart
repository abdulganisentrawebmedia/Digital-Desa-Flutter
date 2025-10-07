import 'package:flutter/material.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SocialLoginButton(
          icon: Image.asset(
            'assets/icons/google.png',
            height: 20,
            width: 20,
            errorBuilder: (context, error, stackTrace) {
              return Icon(
                Icons.g_mobiledata,
                size: 24,
                color: Colors.grey.shade700,
              );
            },
          ),
          label: 'Masuk dengan Google',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Google Sign In coming soon'),
              ),
            );
          },
        ),
        const SizedBox(height: 12),
        _SocialLoginButton(
          icon: const Icon(
            Icons.facebook,
            size: 20,
            color: Color(0xFF1877F2),
          ),
          label: 'Masuk dengan Facebook',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Facebook Sign In coming soon'),
              ),
            );
          },
        ),
      ],
    );
  }
}

class _SocialLoginButton extends StatelessWidget {
  final Widget icon;
  final String label;
  final VoidCallback onPressed;

  const _SocialLoginButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.grey.shade300),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 12),
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
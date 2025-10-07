import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../app/router/app_router.dart';
import '../../../../../app/theme/app_theme.dart';
import '../bloc/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  // Kode lisensi yang sudah ditentukan
  final String _kodeLisensi = '01JNQEW95JZ32BVNWNX12C5KPM';

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
        LoginRequested(
          email: _emailController.text.trim(),
          password: _passwordController.text,
          kodeLisensi: _kodeLisensi,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            context.go(AppRouter.root);
          } else if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: AppTheme.errorColor,
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            );
          }
        },
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Ilustrasi Village
                    _buildVillageIllustration(),
                    const SizedBox(height: 32),

                    // Greeting Text
                    Text(
                      'Selamat Datang!',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.textPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Silakan masukkan Email dan Password yang sudah terdaftar untuk mengakses aplikasi Digital Desa',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppTheme.textSecondaryColor,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 32),

                    // Email Field
                    Text(
                      'Email / Nomor Telepon',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppTheme.textPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'example@email.com',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 14,
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade50,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: AppTheme.primaryColor,
                            width: 2,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: AppTheme.errorColor,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: AppTheme.errorColor,
                            width: 2,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email harus diisi';
                        }
                        if (!value.contains('@')) {
                          return 'Email tidak valid';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),

                    // Password Field
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppTheme.textPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        hintText: 'Kata Sandi',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 14,
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade50,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Colors.grey.shade600,
                            size: 20,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: AppTheme.primaryColor,
                            width: 2,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: AppTheme.errorColor,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: AppTheme.errorColor,
                            width: 2,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password harus diisi';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12),

                    // Forgot Password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          context.push(AppRouter.forgotPassword);
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(0, 0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text(
                          'LUPA PASSWORD',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Login Button
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        final isLoading = state is AuthLoading;

                        return SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: isLoading ? null : _login,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.primaryColor,
                              foregroundColor: Colors.white,
                              disabledBackgroundColor: Colors.grey.shade300,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              elevation: 0,
                            ),
                            child: isLoading
                                ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.white,
                                ),
                              ),
                            )
                                : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.login,
                                  size: 20,
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  'Masuk Akun',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),

                    // Divider
                    Row(
                      children: [
                        Expanded(child: Divider(color: Colors.grey.shade300)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Atau',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppTheme.textSecondaryColor,
                            ),
                          ),
                        ),
                        Expanded(child: Divider(color: Colors.grey.shade300)),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Google Sign In Button
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {
                          // TODO: Implement Google Sign In
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Google Sign In coming soon'),
                            ),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.grey.shade300),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
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
                            const SizedBox(width: 12),
                            Text(
                              'Masuk dengan Google',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),

                    // Facebook Sign In Button
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {
                          // TODO: Implement Facebook Sign In
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Facebook Sign In coming soon'),
                            ),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.grey.shade300),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.facebook,
                              size: 20,
                              color: const Color(0xFF1877F2),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              'Masuk dengan Facebook',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Register Link
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Belum memiliki akun? ',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppTheme.textSecondaryColor,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // TODO: Navigate to register page
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Register page coming soon'),
                              ),
                            );
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: const Size(0, 0),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: const Text(
                            'DAFTAR SEKARANG',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildVillageIllustration() {
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
          // Sun
          Positioned(
            top: 20,
            right: 40,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.orange.shade300,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.shade200,
                    blurRadius: 20,
                    spreadRadius: 5,
                  ),
                ],
              ),
            ),
          ),
          // Clouds
          Positioned(
            top: 30,
            left: 30,
            child: _buildCloud(60, 30),
          ),
          Positioned(
            top: 50,
            right: 100,
            child: _buildCloud(50, 25),
          ),
          // Houses
          Positioned(
            bottom: 20,
            left: 40,
            child: _buildHouse(Colors.red.shade400, 50, 40),
          ),
          Positioned(
            bottom: 25,
            left: 110,
            child: _buildHouse(Colors.pink.shade300, 45, 38),
          ),
          Positioned(
            bottom: 20,
            right: 80,
            child: _buildHouse(Colors.red.shade300, 48, 39),
          ),
          Positioned(
            bottom: 30,
            right: 40,
            child: _buildHouse(Colors.pink.shade400, 40, 35),
          ),
          // Trees
          Positioned(
            bottom: 15,
            left: 20,
            child: _buildTree(Colors.green.shade400, 30, 35),
          ),
          Positioned(
            bottom: 20,
            left: 95,
            child: _buildTree(Colors.green.shade500, 25, 30),
          ),
          Positioned(
            bottom: 15,
            right: 120,
            child: _buildTree(Colors.green.shade300, 28, 33),
          ),
          Positioned(
            bottom: 25,
            right: 25,
            child: _buildTree(Colors.green.shade400, 22, 28),
          ),
        ],
      ),
    );
  }

  Widget _buildCloud(double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(height / 2),
      ),
    );
  }

  Widget _buildHouse(Color color, double width, double height) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Roof
        CustomPaint(
          size: Size(width, height * 0.4),
          painter: TrianglePainter(color),
        ),
        // House body
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

  Widget _buildTree(Color color, double width, double height) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Tree crown
        Container(
          width: width,
          height: height * 0.7,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        // Trunk
        Container(
          width: width * 0.25,
          height: height * 0.3,
          color: Colors.brown.shade400,
        ),
      ],
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color color;

  TrianglePainter(this.color);

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
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/constant/custom_color.dart';
import 'package:quran_app/routes/app_routes.dart';
import 'package:quran_app/service/auth_service.dart';
import 'package:quran_app/widget/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthService _authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const Text(
                'Qur\'an App',
                style: TextStyle(
                  color: Color(CustomColor.primary),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                'Assalaamu\'alaikum!!!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(CustomColor.secondary),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 53,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Sign In',
                      style: TextStyle(
                          color: Color(CustomColor.primary),
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 23,
              ),
              CustomTextField(
                label: 'Email',
                isPassword: false,
                controller: _emailController,
              ),
              CustomTextField(
                label: 'Password',
                isPassword: true,
                controller: _passwordController,
              ),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: const Color(CustomColor.secondary)),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have account? '),
                  InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.register);
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(color: Color(0xff3498DB)),
                      )),
                  const Text(' now'),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  void _login() async {
    final String email = _emailController.text;
    final String password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Email atau password tidak boleh kosong')));
      return;
    }

    User? user = await _authService.signInWithEmailAndPassword(email, password);
    if (user != null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Login successfull')));
      await Future.delayed(const Duration(seconds: 1));
      Get.offNamedUntil(AppRoutes.main, (route) => false);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Login failed, please check your email or password')));
    }
  }
}

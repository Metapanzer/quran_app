import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/constant/custom_color.dart';
import 'package:quran_app/routes/app_routes.dart';
import 'package:quran_app/service/auth_service.dart';
import 'package:quran_app/widget/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final AuthService _authService = AuthService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
              Container(
                width: 352,
                height: 330,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/image-mosque.png'),
                        fit: BoxFit.fitHeight)),
              ),
              const SizedBox(
                height: 40,
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
              CustomTextField(
                label: 'Confirm Password',
                isPassword: true,
                controller: _confirmPasswordController,
              ),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: _register,
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: const Color(CustomColor.secondary)),
                    child: const Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have account? Login '),
                  InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.login);
                      },
                      child: const Text(
                        'here',
                        style: TextStyle(color: Color(0xff3498DB)),
                      ))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  void _register() async {
    final email = _emailController.text;
    final password = _passwordController.text;
    final confirmPassword = _confirmPasswordController.text;

    if (email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content:
              Text('Email, password, or confirm password cannot be empty')));
      return;
    }

    if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Password and confirm password must be the same')));
    }
    User? user = await _authService.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Register Success')));
      await Future.delayed(const Duration(seconds: 1));
      Get.toNamed(AppRoutes.login);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Register Failed, check your email or password')));
    }
  }
}

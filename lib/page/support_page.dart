import 'package:flutter/material.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Help & Support',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: IntrinsicHeight(
              child: IntrinsicWidth(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: const Column(children: [
                    Text(
                      'If you have any questions, feedback, or need support, please do not hesitate to reach out to us. We are here to assist you on your journey with the Holy Qur\'an.',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Email: support@quranapp.com',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Phone: +6282123456789',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    )
                  ]),
                ),
              ),
            ),
          ),
        ));
  }
}

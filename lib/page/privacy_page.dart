import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Privacy & Security',
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
                      'At Al Qur\'an Mobile App, we are committed to protecting your privacy and ensuring the security of your personal information. This Privacy & Security policy outlines how we collect, use, and safeguard your data.',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Data Collection',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'We collect information you provide, such as your name, email address, and phone number when you create an account or contact us, as well as feedback and support details when you reach out to our team. Additionally, we automatically collect usage data, which includes information about how you use the app and the time spent on it, and device information, such as the device model, operating system, and unique device identifiers.',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Use of Information',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'We use your information to deliver the app\'s features, improve your user experience, and analyze usage data to understand how users interact with the app and identify areas for improvement. We may use your contact information to send updates, respond to inquiries, and provide customer support. Additionally, we enhance the security of our app, detect and prevent fraud, and protect against unauthorized access using your information.',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ));
  }
}

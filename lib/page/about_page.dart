import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'About',
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
                      'Welcome to Quran App, At Al Qur\'an Mobile App, we are dedicated to bringing the sacred teachings of the Holy Qur\'an closer to you, wherever you are. Our mission is to create an accessible and user-friendly platform that allows Muslims worldwide to read, study, and reflect upon the divine words of Allah.',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Our vision is to foster a deeper connection with the Holy Qur\'an by leveraging modern technology. We aim to provide a comprehensive digital experience that caters to the spiritual and educational needs of our users.',
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

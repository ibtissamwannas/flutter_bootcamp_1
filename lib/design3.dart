import 'package:flutter/material.dart';

class Design3 extends StatefulWidget {
  const Design3({super.key});

  @override
  State<Design3> createState() => _Design3State();
}

class _Design3State extends State<Design3> {
  static const points = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 10),
            Image.asset(height: 40, 'assets/images/logo.png'),
            const SizedBox(height: 10),
            Image.asset(
              height: 200,
              'assets/images/doctor.jpeg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            const Text(
              'Check your symptoms',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Take a few moments to complete your Ada assesment Hello. You\'ve reached us outside of clinic hours. Please select an option.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            buildPoints(),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text('Create your account'),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.blue, width: 2),
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text('Log In'),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget buildPoints() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
        (index) {
          final isActive = index < points;
          final color = isActive ? Colors.blue : Colors.grey;

          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(Icons.circle, color: color, size: 10),
          );
        },
      ),
    );
  }
}

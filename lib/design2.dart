import 'package:flutter/material.dart';

class Design2 extends StatelessWidget {
  const Design2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildCard(),
            const SizedBox(height: 20),
            const Text(
              'About',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Dr Stefanni Albert is a cardionlogist in Nashivile & affiliates with multiples hospitals int eh area. She received this medical degree from Duke University School of Medicine and has been in practice fo more than 20 years.',
            ),
          ],
        ),
      ),
    );
  }
}

buildCard() {
  const orange = Color.fromARGB(255, 244, 238, 219);
  const red = Color.fromARGB(255, 250, 227, 229);
  final grey = Colors.grey.shade200;
  return IntrinsicHeight(
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            height: 200,
            "assets/images/doctor.jpeg",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dr. Stefeni Albert',
              style: TextStyle(fontSize: 32),
            ),
            const Text(
              'Health Specialist',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const Spacer(),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: orange),
                  onPressed: () {},
                  child: const Icon(Icons.mail, color: Colors.amber),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: red),
                  onPressed: () {},
                  child: Icon(Icons.phone, color: Colors.red.shade300),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: grey),
                  onPressed: () {},
                  child: const Icon(Icons.videocam, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        )
      ],
    ),
  );
}

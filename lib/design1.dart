import 'package:flutter/material.dart';

class Design1 extends StatefulWidget {
  const Design1({super.key});

  @override
  State<Design1> createState() => _Design1State();
}

class _Design1State extends State<Design1> {
  final sizes = ['UK 8', 'UK 8.5', 'UK 9', 'UK 9.5', 'UK 10', 'UK 10.5'];
  int stars = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Christian Louboutin Black Leather Shoes - UK 8",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Trainers / Shoes",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: List.generate(5, (index) {
                    final isActive = index < stars;
                    final color = isActive ? Colors.amber : Colors.grey;
                    return Icon(
                      Icons.star,
                      color: color,
                    );
                  }),
                ),
                const SizedBox(width: 10),
                Text('$stars', style: const TextStyle(fontSize: 16)),
                const Spacer(),
                const Text(
                  "\$250.00",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 0.5,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Select Size",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 32,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: sizes.length,
                separatorBuilder: (context, index) => const SizedBox(width: 12),
                itemBuilder: (context, index) => OutlinedButton(
                  onPressed: () {},
                  child: Text(sizes[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

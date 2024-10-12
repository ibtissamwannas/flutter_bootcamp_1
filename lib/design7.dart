import 'package:flutter/material.dart';

class Design7 extends StatelessWidget {
  const Design7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Colors.amber.shade700,
        elevation: 0,
        actions: const [
          Icon(Icons.crop_free),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        color: Colors.amber.shade700,
        height: 400,
        child: Stack(
          children: [
            Positioned(
              right: 16,
              bottom: 0,
              child: Image.asset('assets/images/person.png', height: 400),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16.0),
              // alignment: Alignment.centerLeft,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    '08',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Text(
                    'June',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    'Surakarta',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Text(
                    'Clean City',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Text(
                    'Together',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(Icons.place, color: Colors.white),
                      Text(
                        'Surakarta, INA',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_1/model/fruit.dart';

class Design4 extends StatefulWidget {
  const Design4({super.key});

  @override
  State<Design4> createState() => _Design4State();
}

class _Design4State extends State<Design4> {
  List<Fruit> fruits = [
    Fruit(
      name: 'Apple',
      image: 'apple.png',
      portion: '18.00/Kg',
      color: Colors.orange.shade50,
    ),
    Fruit(
      name: 'Banana',
      image: 'banana.png',
      portion: '42.00/Kg',
      color: Colors.lightBlue.shade50,
    ),
    Fruit(
      name: 'Kiwi',
      image: 'kiwi.png',
      portion: '80.00/Kg',
      color: Colors.lightBlue.shade50,
    ),
    Fruit(
      name: 'Orange',
      image: 'orange.png',
      portion: '28.00/Kg',
      color: Colors.lightBlue.shade50,
    ),
    Fruit(
      name: 'Pineapple',
      image: 'pineapple.png',
      portion: '54.00/Kg',
      color: Colors.orange.shade50,
    ),
    Fruit(
      name: 'Strawberry',
      image: 'strawberry.png',
      portion: '66.00/Kg',
      color: Colors.lightBlue.shade50,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final fruit = fruits[index];

          return buildFruit(fruit);
        },
      ),
    );
  }

  Widget buildFruit(Fruit fruit) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: fruit.color,
      ),
      child: Column(
        children: [
          Expanded(child: Image.asset('assets/images/${fruit.image}')),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fruit.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Rp: ${fruit.portion}',
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
              SizedBox(
                width: 70,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

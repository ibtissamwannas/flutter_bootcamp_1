import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_1/model/user.dart';

class Design5 extends StatefulWidget {
  const Design5({super.key});

  @override
  State<Design5> createState() => _Design5State();
}

class _Design5State extends State<Design5> {
  List<User> users = const [
    User(
      name: 'Alice Smith',
      position: 'Marketing Manager',
      company: 'XYZ Inc.',
      avatar: 'user1.jpg',
      isOnline: true,
    ),
    User(
      name: 'Bob Johnson',
      position: 'Sales Representative',
      company: '123 Corp.',
      avatar: 'user2.jpg',
      isOnline: false,
    ),
    User(
      name: 'Charlie Brown',
      position: 'Product Manager',
      company: 'ABC Corp.',
      avatar: 'user3.jpg',
      isOnline: true,
    ),
    User(
      name: 'David Lee',
      position: 'Software Developer',
      company: 'ACME Co.',
      avatar: 'user4.jpg',
      isOnline: true,
    ),
    User(
      name: 'Emily Kim',
      position: 'Human Resources Specialist',
      company: 'DEF Inc.',
      avatar: 'user5.jpg',
      isOnline: true,
    ),
    User(
      name: 'Josephine Martin',
      position: 'Software Developer',
      company: 'SOFT Inc.',
      avatar: 'user6.jpg',
      isOnline: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemCount: users.length,
        separatorBuilder: (context, index) => Divider(
          height: 0,
          thickness: 5,
          color: Colors.grey.shade900,
        ),
        itemBuilder: (context, index) {
          final user = users[index];

          return buildUser(user);
        },
      ),
    );
  }

  Widget buildUser(User user) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(16),
      child: IntrinsicHeight(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                height: 90,
                width: 90,
                fit: BoxFit.cover,
                'assets/images/${user.avatar}',
              ),
            ),
            const SizedBox(width: 20),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    style: const TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  Text(
                    user.company,
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Text(
                    user.position,
                    style: TextStyle(
                        fontSize: 12, color: Colors.lightBlue.shade200),
                  )
                ],
              ),
            ),
            const Spacer(),
            Icon(
              color: user.isOnline ? Colors.lightBlue.shade200 : Colors.grey,
              user.isOnline
                  ? Icons.radio_button_checked
                  : Icons.motion_photos_off,
            ),
          ],
        ),
      ),
    );
  }
}

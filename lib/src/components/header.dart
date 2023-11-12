import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/avatar5.png'),
            ),
            SizedBox(width: 10),
            Text(
              "Hello, John Don",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        const CircleAvatar(
          radius: 22,
          backgroundColor: Color.fromARGB(170, 226, 226, 226),
          child: Icon(Icons.more_horiz),
        ),
      ],
    );
  }
}

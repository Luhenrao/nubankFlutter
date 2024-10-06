import 'package:aase/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.visibility_outlined),
              color: Color(0xb3ffffff),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.question_mark_rounded,
                  color: Color(0xb3ffffff)),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.mark_email_read_outlined,
                  color: Color(0xb3fefefe)),
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll<Color>(Color(0xFFBA4DE3))),
            icon: const Icon(Icons.person_outline, color: Colors.white70),
            onPressed: () {},
          ),
          backgroundColor: const Color(0xFF8A05BE),
        ),
        body: const Home(),
      ),
    );
  }
}

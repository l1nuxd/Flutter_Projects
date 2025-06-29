import 'package:flutter/material.dart';

void main() {
  runApp(const IAmRichApp());
}

class IAmRichApp extends StatelessWidget {
  const IAmRichApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I Am Rich',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const IAmRichScreen(),
    );
  }
}

class IAmRichScreen extends StatelessWidget {
  const IAmRichScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.diamond, color: Colors.red, size: 200),
            const SizedBox(height: 20),
            const Text(
              'I Am Rich',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '\$999.99',
              style: TextStyle(color: Colors.grey[400], fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

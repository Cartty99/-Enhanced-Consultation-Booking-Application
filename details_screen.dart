import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Display student details here and connect to ViewModel
            ElevatedButton(
              onPressed: () {}, // Write code to go back to input screen
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Enter Student Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Student Number'),
            const TextField(
              // Write code to connect to ViewModel,
              decoration: InputDecoration(
                hintText: 'e.g. 2023123456',
              ),
            ),

            const SizedBox(height: 16),
            // Add other fields
            ElevatedButton(
              onPressed:
                  () {}, // Write code to submit data and navigate to details screen
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

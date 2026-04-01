import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  // 🔥 Async Example in Screen 2
  Future<void> loadData() async {
    print("Loading data...");
    await Future.delayed(const Duration(seconds: 2));
    print("Data Loaded!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await loadData();
              },
              child: const Text("Run Async Task"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}

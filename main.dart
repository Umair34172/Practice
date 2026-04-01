import 'screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Navigation + Async Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Home Screen'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  // 🔥 Async Function Example
  Future<void> umairFunc() async {
    print('Step 1: Umair');

    await Future.delayed(const Duration(seconds: 3));

    print('Step 2: Umair Khan (after delay)');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PROFILE"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Text("U",
                  style: TextStyle(color: Colors.white, fontSize: 40)),
            ),

            const SizedBox(height: 20),

            const Text("Umair",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const Text("Umair41100@gmail.com"),

            const SizedBox(height: 30),

            // 🔥 Async Button
            ElevatedButton(
              onPressed: () async {
                await umairFunc();
              },
              child: const Text("Run Async Function"),
            ),

            const SizedBox(height: 20),

            // 🔥 Navigation Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen()),
                );
              },
              child: const Text("Go to Screen 2"),
            ),
          ],
        ),
      ),
    );
  }
}

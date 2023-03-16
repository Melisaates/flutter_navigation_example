import 'package:flutter/material.dart';

//veri alma
/* 
class SecondScreen extends StatelessWidget {
  final String message;

  const SecondScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('second screen'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => const FirstScreen()));
            },
            child: Text(
              'Gelen data: \n$message',
              style: const TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
} */

//geriye veri aktarma

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('second screen'),
        ),
        body: (
           ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "melisa");
              },
              child: const Text("Go back!", style: TextStyle(fontSize: 20))),
        ));
  }
}

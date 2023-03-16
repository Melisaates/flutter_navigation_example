import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/second_screen.dart';
/* 
class ScreenData {
  final String message;
  ScreenData(this.message);
} */
//diğer sayfaya veri gönderme
/* class FirstScreen extends StatelessWidget {
  final String message = 'Diğer sayfaya gidecek olan bilgi...';
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final args = ModalRoute.of(context)!.settings.arguments as ScreenData;
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                //Navigator.pushReplacement(
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondScreen(message: message)));
              },
              child: const Text("Sayfa 2'ye Git!",
                  style: TextStyle(fontSize: 20))),
        ));
  }
}
 */

//veri alma
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final args = ModalRoute.of(context)!.settings.arguments as ScreenData;
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: ElevatedButton(
              onPressed: () async {
                //Navigator.pushReplacement(
                final data = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()));

                        
                print(data);
              },
              child: const Text("Sayfa 2'ye Git!",
                  style: TextStyle(fontSize: 20))),
        )
        );
  }
}








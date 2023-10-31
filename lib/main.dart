import 'package:flutter/material.dart';

void main() {
  runApp(const AppAkademie());
}

class AppAkademie extends StatelessWidget {
  const AppAkademie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Steckbrief App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Steckbrief Lama'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    const headingStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network('https://www.kindernetz.de/wissen/tierlexikon/1653497692338%2Csteckbrief-lama-102~_v-7x2@2dL_-bc89d1b8c81b47b66f836795f7bde50a08841ecb.jpg'),
            const SizedBox(height: 20),
            const Text('Name', style: headingStyle),
            const Text('Diana das Lama'),
            const SizedBox(height: 20),
            const Text('Gewicht', style: headingStyle),
            const Text('120 kg'),
            const SizedBox(height: 20),
            const Text('Größe', style: headingStyle),
            const Text('1,80 m'),
          ],
        ),
      ),
    );
  }
}

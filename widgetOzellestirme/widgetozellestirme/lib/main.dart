import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Widget Özelleştirme'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
            MaviKare(),
            YesilKare(),
            YaziEkle(),
            YaziEkle2("Metin Ekle"),
          ],
        ));
  }
}

class MaviKare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.blue,
    );
  }
}

class YesilKare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.green,
    );
  }
}

class YaziEkle extends StatelessWidget {
  const YaziEkle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Widget Ozellestirme");
  }
}

class YaziEkle2 extends StatelessWidget {
  String metin;

  YaziEkle2(this.metin);

  @override
  Widget build(BuildContext context) {
    return Text(metin);
  }
}

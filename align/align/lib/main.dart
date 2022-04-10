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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Align Dersi'),
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
              width: 100,
              height: 100,
              color: Colors.red,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text("Align Yapısı"),
              ),
            ),
            //Var olan boş alanı tamamen boşlukla doldurur
            //Spacer(),
            Spacer(flex: 30),
            SizedBox(
                width: 100,
                height: 100,
                child: Container(width: 50, height: 50, color: Colors.green)),
            Spacer(flex: 30),
          ],
        ));
  }
}

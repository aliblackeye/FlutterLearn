import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'İlham Al'),
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
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranGenisligi = ekranBilgisi.size.width;
    final double ekranYuksekligi = ekranBilgisi.size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: ekranYuksekligi / 100, bottom: ekranYuksekligi / 100),
                child: SizedBox(
                  width: ekranGenisligi / 3,
                  child: Image.asset("assets/images/kasimadalan.jpg"),
                ),
              ),
              Text(
                "Kasım Adalan",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: ekranGenisligi / 20,
                ),
              ),
              Spacer(),
              Text(
                "Udemy'nin en iyi öğretmenlerinden biri.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: ekranGenisligi / 20),
              ),
              Spacer(),
              SizedBox(
                width: ekranGenisligi / 2,
                child: ElevatedButton(
                  child: Text("İlham Al",
                      style: TextStyle(fontSize: ekranGenisligi / 15)),
                  onPressed: () {
                    print("Butona basıldı.");
                  },
                ),
              ),
            ],
          ),
        ));
  }
}

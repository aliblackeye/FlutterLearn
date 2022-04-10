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
      home: const MyHomePage(title: "Tasarım Giriş 1"),
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
  void initState() {
    super.initState();

    print("Uygulama açıldı");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: 

      // Stack(
      //   children: [
      //     Container(width: 100,height: 100,color: Colors.red,),
      //     Container(width: 75,height: 75,color: Colors.blue,),
      //     Container(width: 50,height: 50,color: Colors.green,),
      //     Text("Stack Yapısı"),
      //   ],
      // )
       
      // Column(
      //   children: [
      //     Text("Sütun Yapısı"),
      //     Container(width: 50,height: 50,color: Colors.red,),
      //     Container(width: 50,height: 50,color: Colors.blue,),
      //     Container(width: 50,height: 50,color: Colors.green,),
      //   ],
      // )

      Row(
        children: [
          Text("Row Yapısı"),
          Container(width: 70,height: 70,color: Colors.red,),
          Container(width: 70,height: 70,color: Colors.blue,),
          Container(width: 70,height: 70,color: Colors.green,),
          Column(
            children: [
              Text("Column Yapısı"),
              Container(width: 70,height: 70,color: Colors.red,),
              Container(width: 70,height: 70,color: Colors.blue,),
              Container(width: 70,height: 70,color: Colors.green,),
              Stack(
                children: [
                  Container(width: 70,height: 70,color: Colors.red,),
                  Container(width: 50,height: 50,color: Colors.blue,),
                  Container(width: 30,height: 30,color: Colors.green,),
                  Text("Stack Yapısı"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

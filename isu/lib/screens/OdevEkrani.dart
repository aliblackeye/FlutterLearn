import 'package:flutter/material.dart';

class OdevEkrani extends StatelessWidget {
  const OdevEkrani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);

    final double ekranGenisligi = ekranBilgisi.size.width;
    final double ekranYuksekligi = ekranBilgisi.size.height;

    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 410,
                child: Image.asset(
                  "assets/images/ev.jpg",
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Modern House",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Bandung",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.star,
                      color: Colors.pinkAccent,
                    ),
                    Text("4.5"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        "Listing Agent",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Image.asset("assets/images/profil.jpg"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Ali Karagöz"),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

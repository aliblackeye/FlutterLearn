import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          Icon(
            Icons.home,
          ),
          SizedBox(
            width: 10,
          ),
          Text('ANA SAYFA'),
        ],
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/login');
              },
              child: Row(
                children: [
                  Icon(Icons.login),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Giris")
                ],
              )),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/register');
              },
              child: Text("Uye olma")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/splash');
              },
              child: Text("Splash")),
          ElevatedButton(
            child: Text("Ödev Ekranı"),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/odev');
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home,
                color: Colors.black,
                size: 32,
              ),
              Icon(
                Icons.assured_workload,
                color: Colors.black,
                size: 32,
              ),
              Icon(
                Icons.attachment,
                color: Colors.black,
                size: 32,
              ),
              Icon(
                Icons.auto_fix_high,
                color: Colors.black,
                size: 32,
              ),
              Icon(
                Icons.camera,
                color: Colors.black,
                size: 32,
              ),
            ],
          )
        ],
      ),
    );
  }
}

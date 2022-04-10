import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("assets/images/bg1.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Center(
                child: Padding(
                    padding: EdgeInsets.only(left: 50, right: 50),
                    child: Image.asset('assets/images/logo.png')),
              ),
              Positioned(
                bottom: 30,
                left: 25,
                right: 25,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/login');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: Text("Start the fun.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 224, 13, 108),
                      )),
                ),
              )
            ],
          )),
    );
  }
}

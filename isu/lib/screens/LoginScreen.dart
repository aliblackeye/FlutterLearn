import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.amber,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Padding(
                    padding: EdgeInsets.only(left:50, right:50),
                    child: Image.asset(
                      'assets/images/logo.png',
                    )
                  ),
                  const SizedBox(height:25),
                  const Padding(
                    padding: EdgeInsets.only(left:30, right: 30),
                    child: TextField(
                    // textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                  )),
                  const SizedBox(height:15),
                  const Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: TextField(
                      // textAlign: TextAlign.center,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(height:15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/home');
                        }, 
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        child: Text("Login",
                          style: TextStyle(
                            color: Color.fromARGB(255, 56, 56, 56),
                          )
                        ),
                      ),
                      SizedBox(width: 30),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/register');
                        }, 
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        child: Text("Register",
                          style: TextStyle(
                            color: Color.fromARGB(255, 56, 56, 56),
                          )
                        ),
                      ),
                    ]
                  ),
                ],
            )
            ),
        )
      );
  }
}
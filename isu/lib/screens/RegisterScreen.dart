import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.only(left:30, right: 30),
                    child: TextField(
                    // textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'First Name',
                    ),
                  )),
                  const SizedBox(height:15),
                  const Padding(
                    padding: EdgeInsets.only(left:30, right: 30),
                    child: TextField(
                    // textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Last Name',
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
                        child: Text("REGISTER",
                          style: TextStyle(
                            color: Color.fromARGB(255, 56, 56, 56),
                          )
                        ),
                      ),
                      SizedBox(width: 30),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        }, 
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        child: Text("LOGIN",
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
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/homepage.dart';
import 'package:flutter_application_3/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 156, 112, 252),
            Color.fromARGB(255, 47, 28, 164),
          ]),
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Image.asset('./asset/Feelings.png'),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Welcome onboard',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
          const Padding(
            padding: EdgeInsets.all(1.0),
            child: Text(
              textAlign: TextAlign.center,
              'let us set you up & start optimizing',
              style: TextStyle(color: Colors.white, fontSize: 19),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 52,
            width: 377,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.black),
            ),
            child: Center(
                child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                prefixIconColor:
                    MaterialStateColor.resolveWith((Set<MaterialState> states) {
                  if (states.contains(MaterialState.focused)) {
                    return Colors.green;
                  }
                  if (states.contains(MaterialState.error)) {
                    return Colors.red;
                  }
                  return Colors.grey;
                }),
                hintText: 'Enter your full name',
                hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 52,
            width: 377,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.black),
            ),
            child: Center(
                child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                prefixIconColor:
                    MaterialStateColor.resolveWith((Set<MaterialState> states) {
                  if (states.contains(MaterialState.focused)) {
                    return Colors.green;
                  }
                  return Colors.grey;
                }),
                hintText: 'Enter your email',
                hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 52,
            width: 377,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.black),
            ),
            child: Center(
                child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                prefixIconColor:
                    MaterialStateColor.resolveWith((Set<MaterialState> states) {
                  if (states.contains(MaterialState.focused)) {
                    return Colors.green;
                  }

                  return Colors.grey;
                }),
                hintText: 'Enter your Password',
                hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 52,
            width: 377,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.black),
            ),
            child: Center(
                child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                prefixIconColor:
                    MaterialStateColor.resolveWith((Set<MaterialState> states) {
                  if (states.contains(MaterialState.focused)) {
                    return Colors.green;
                  }
                  if (states.contains(MaterialState.error)) {
                    return Colors.red;
                  }
                  return Colors.grey;
                }),
                hintText: 'Renter your Password',
                hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            )),
          ),
          SizedBox(
            height: 25,
          ),
          //////
          Container(
            width: 364,
            height: 54,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent[400],
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              child: Text(
                " Register ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: AutofillHints.birthdayDay,
                ),
              ),
            ),
          ),
          //Small massage
          Container(
            width: 216,
            height: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: RichText(
                text: TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Sign In',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

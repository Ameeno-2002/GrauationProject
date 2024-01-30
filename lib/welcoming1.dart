// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_3/registerlogin.dart';

class HelloUser extends StatefulWidget {
  const HelloUser({Key? key}) : super(key: key);

  @override
  _HelloUserState createState() => _HelloUserState();
}

class _HelloUserState extends State<HelloUser> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: PageView(
        controller: _pageController,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 190,
              ),

              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset('./asset/undraw_completed_tasks_vs6q 1.png'),
              ),
              SizedBox(
                height: 79,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  'Welcome Aboard!!',
                  style: TextStyle(
                      color: Colors.black, fontSize: 36, fontFamily: "Poppins"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  textAlign: TextAlign.center,
                  'We aim to help you achieve more and track your \na task & activities to maintain a healthy\na work space.',
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              //Button placment
              const SizedBox(
                height: 120,
              ),
              Container(
                width: 364,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
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
                    "Let’s begin ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: AutofillHints.birthdayDay),
                  ),
                ),
              )
            ],
          ),

          ////////////Second Page
          // Column(
          //   children: [
          //     const SizedBox(
          //       height: 100,
          //     ),
          //     Image.asset('./asset/Pie Chart.png'),
          //     Padding(
          //       padding: EdgeInsets.only(top: 10.0),
          //       child: Text(
          //         'Our Vision',
          //         style: TextStyle(
          //             color: Colors.black, fontSize: 36, fontFamily: "Poppins"),
          //       ),
          //     ),
          //     const Padding(
          //       padding: EdgeInsets.all(1.0),
          //       child: Text(
          //         textAlign: TextAlign.center,
          //         'Feel comfortable in your workplace we want \nyou to have a professional, easy simple,\n experience in managing everything.',
          //         style: TextStyle(color: Colors.black, fontSize: 16),
          //       ),
          //     ),
          //     const SizedBox(
          //       height: 130,
          //     ),
          //     Container(
          //       width: 364,
          //       height: 54,
          //       child: ElevatedButton(
          //         onPressed: () {
          //           _pageController.nextPage(
          //             duration: Duration(milliseconds: 500),
          //             curve: Curves.easeInOut,
          //           );
          //         },
          //         style: ElevatedButton.styleFrom(
          //           backgroundColor: Colors.deepPurpleAccent[400],
          //           shadowColor: Colors.black,
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(28),
          //           ),
          //         ),
          //         child: Text(
          //           " Next Page",
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 32,
          //             fontFamily: AutofillHints.birthdayDay,
          //           ),
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          //////////////Third Slide///////////////////////////
          Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset('./asset/Clock Calendar.png'),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  'Our App',
                  style: TextStyle(
                      color: Colors.black, fontSize: 36, fontFamily: "Poppins"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(1.0),
                child: Text(
                  textAlign: TextAlign.center,
                  'Our app is made for everyone ,our aim is\n for each and everyone we simply made\n it easy to maintain',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 127,
              ),
              Container(
                width: 364,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
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
              )
            ],
          ),

          ///////
        ],
      ),
    );
  }
}

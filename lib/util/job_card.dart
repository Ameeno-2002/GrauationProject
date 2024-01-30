// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class JobCard extends StatelessWidget {
  final String projectname;
  final String groupname;
  final String userpics;
  final int process;

  const JobCard({
    required this.projectname,
    required this.groupname,
    required this.userpics,
    required this.process,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          padding: EdgeInsets.all(12),
          color: const Color.fromARGB(255, 199, 177, 246),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Text

                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        projectname,
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.deepPurple[300],
                    ),
                  ),

                  //Images
                  SizedBox(
                    height: 70,
                    child: Row(
                      children: [
                        Image.asset('asset/Ellipse 48.png'),
                        Image.asset('asset/Ellipse 51.png'),
                        Image.asset('asset/Ellipse 55.png'),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  groupname,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // ignore: prefer_interpolation_to_compose_strings
              Padding(
                padding: EdgeInsets.only(right: 130),
                child: Text(process.toString() + '%'),
              ),
              // LinearPercentIndicator(
              //   center: Text(
              //     'Progress',
              //     style: TextStyle(
              //       fontSize: 10,
              //     ),
              //   ),
              //   animation: true,
              //   animationDuration: 1000,
              //   lineHeight: 20,
              //   percent: 0.2,
              //   progressColor: Colors.deepPurple[400],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

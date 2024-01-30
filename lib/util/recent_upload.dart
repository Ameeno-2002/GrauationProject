// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RecentJobCard extends StatelessWidget {
  final String projectname;
  final String groupname;
  final String userpics;
  final int process;

  RecentJobCard({
    required this.projectname,
    required this.groupname,
    required this.userpics,
    required this.process,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 50,
                padding: EdgeInsets.all(5),
                color: const Color.fromARGB(255, 224, 224, 224),
                child: Image.asset('./asset/blackuser.png'),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  groupname,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(projectname)
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Text(process.toString() + '%'),
          ],
        ),
      ),
    );
  }
}

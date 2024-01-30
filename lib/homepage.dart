// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/dropbox.dart';
import 'package:flutter_application_3/util/job_card.dart';
import 'package:flutter_application_3/util/recent_upload.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // other task
  int index = 2;
  final List otherTask = [
    // [project Title , Project name , UsersPic,Printage]
    ['Project A', 'Software Testing', '/asset', 38],
    ['Project B', 'Software Validation', '/asset', 90],
    ['Project C', 'Software Validation', '/asset', 21],
  ];
  final List recentJobs = [
    // [project Title , Project name , UsersPic,Printage]
    ['Project A', 'Software Testing', '/asset/Ellipse 48.png', 5],
    ['Project B', 'Software Part3', '/asset/Ellipse 48.png', 90],
    ['Project C', 'Software intro ', '/asset', 50],
  ];
  final items = <Widget>[
    Icon(
      Icons.home,
      size: 30,
    ),
    Icon(
      Icons.storage_sharp,
      size: 30,
    ),
    Icon(
      Icons.notifications,
      size: 30,
    ),
    Icon(
      Icons.account_circle,
      size: 30,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      this.index = index;
      // Navigate to DropboxPage when storage_sharp icon is tapped
      if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Dropbox()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          SizedBox(height: 50),

          //app bar

          // I used (Paddig)Wiget to move it away from left
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 60,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[200],
                  ),
                  child: Image.asset(
                    'asset/Left.png',
                    color: Colors.grey[800],
                  ),
                ),

                //Account Icon
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepPurple[300],
                    ),
                    child: Image.asset(
                      'asset/Ellipse 48.png',
                    ),
                  ),
                ),
              ],
            ),
          ),

          //
          SizedBox(height: 25),
          //text
          Padding(
            padding: const EdgeInsets.only(right: 230.0),
            child: Text(
              'Hello, Amin',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(height: 50),
          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              //Border Radius
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 199, 177, 246),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              //Text field and its functions
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      child: Image.asset(
                        'asset/Vector.png',
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Serach your for task',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(right: 260.0),
            child: Text(
              'My Task',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),

          SizedBox(height: 25),

          Container(
            height: 184,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return JobCard(
                  projectname: recentJobs[index][0],
                  groupname: recentJobs[index][1],
                  userpics: recentJobs[index][2],
                  process: recentJobs[index][3],
                );
              },
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //for user
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  'Recent Uploads',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 20),
          //-------------------------------------------------------------//
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                itemCount: recentJobs.length,
                itemBuilder: (context, index) {
                  return RecentJobCard(
                    projectname: otherTask[index][0],
                    groupname: otherTask[index][1],
                    userpics: otherTask[index][2],
                    process: otherTask[index][3],
                  );
                },
              ),
            ),
          ),
        ],
      ),

      //bottomNavigationBar
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        backgroundColor: Colors.grey.shade300,
        height: 48,
        color: const Color.fromARGB(255, 199, 177, 246),
        onTap: _onItemTapped,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          (index) => setState(() => this.index = index);
        },
        backgroundColor: const Color.fromARGB(255, 199, 177, 246),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

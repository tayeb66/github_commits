import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_commits/views/profile_page.dart';
import 'package:github_commits/views/users_commits_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  final screens =[UserCommitsList(),ProfilePage()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF0333333),
      appBar: AppBar(
        toolbarHeight: 44.0,
        backgroundColor: Color(0xF01D1D1D),
        elevation: 0.1,
      ),
      bottomNavigationBar: Container(
        width: 380.0,
        height: 66.0,
        color: Color(0xF0161616),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          selectedItemColor: Color(0xF00A84FF),
          unselectedItemColor: Color(0xDE0A84FF),
          backgroundColor: Color(0xF0161616),

          selectedLabelStyle: TextStyle(
              fontSize: 10.0,
              fontFamily: 'SourceSansPro',
              fontStyle: FontStyle.normal),
          showSelectedLabels: true,
          unselectedLabelStyle: TextStyle(
              fontSize: 10.0,
              fontFamily: 'SourceSansPro',
              fontStyle: FontStyle.normal),
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'lib/icons/github_commits.png',
                width: 35,
                height: 30,
                color: Color(0xF00A84FF),
                // color: Color(0xF00A84FF),
              ),
              label: 'Commits',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'User Profile'),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}

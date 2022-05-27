import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF0333333),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 77.5, top: 74, right: 129.5),
            height: 168.0,
            width: 168.0,
            child: CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 86.0, right: 138.0),
            width: 151.0,
            height: 30.0,
            child: Text(
              'Name',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'SourceSansPro'),
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 113.0, right: 165.0),
            width: 97.0,
            height: 18.0,
            child: Text(
              '@user_name',
              style: TextStyle(
                  color: Color(0xF0C9C9C9),
                  fontSize: 14.0,
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 86.0, right: 21.0),
            width: 265.0,
            height: 21.0,
            child: Text(
              'Bio: There once was...',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 17.0,
                  fontFamily: 'SourceSansPro'),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 105.0, right: 162.0),
            width: 108.0,
            height: 21.0,
            child: Text(
              'Public Repos: 2',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.w400,
                  fontSize: 17.0),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 105.0, right: 171.0),
            width: 99.0,
            height: 21.0,
            child: Text(
              'Public Gists: 5',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.w400,
                  fontSize: 17.0),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 105.0, right: 157.0),
            width: 113.0,
            height: 21.0,
            child: Text(
              'Private Repos: 5',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.w400,
                  fontSize: 17.0),
            ),
          ),
        ],
      ),
    );
  }
}

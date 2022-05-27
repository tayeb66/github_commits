import 'package:flutter/material.dart';
import 'package:github_commits/views/profile_page.dart';

class UserCommitsList extends StatefulWidget {
  const UserCommitsList({Key? key}) : super(key: key);

  @override
  State<UserCommitsList> createState() => _UserCommitsListState();
}

class _UserCommitsListState extends State<UserCommitsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF0333333),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 13.0, top: 11.0),
                child: Text(
                  'Flutter Commit List',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 17.0),
                ),
              ),
              SizedBox(
                width: 16.0,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 13.0, top: 12.0),
                width: 70.0,
                height: 22.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26.0),
                  color: Color(0xF0515050),
                ),
                child: Text(
                  'master',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 17.0),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 11.0,
          ),
          GestureDetector(
            onTap: () {

            },
            child: Column(
              children: [
                Container(
                  width: 375.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 12.0),
                        child: Text(
                          'Fix All bugs',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontFamily: 'SourceSansPro',
                              fontSize: 17.0),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 14.0, right: 17.0),
                        width: 36.0,
                        height: 15.0,
                        color: Color(0xF0515050),
                        child: Text(
                          '18:8',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xF0B8B8B8),
                              fontFamily: 'SourceSansPro',
                              fontSize: 12.0),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16.0, bottom: 12.0),
                  child: Row(
                    children: [
                      Container(
                        height: 20.0,
                        width: 20.0,
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Container(
                        child: Text('Name',
                            style: TextStyle(
                                color: Color(0xF09B9B9B),
                                fontSize: 12.0,
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

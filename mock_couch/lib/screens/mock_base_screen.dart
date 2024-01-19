// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:mock_couch/models/mock_user.dart';
import 'package:mock_couch/screens/mock_profile_screen.dart';
import 'package:mock_couch/widgets/mock_post_list.dart';
import 'package:mock_couch/services/mock_posts_service.dart';

class MockBaseScreen extends StatefulWidget {
  const MockBaseScreen({super.key});

  @override
  State<MockBaseScreen> createState() => _MockBaseScreenState();
}

class _MockBaseScreenState extends State<MockBaseScreen> {
  void callGetPosts() {
    MockPostsServce.getPostsFromFirestore();
  }

  MockUser callGetUser() {
    // Should be done on app opening and when profile screen gets refreshed generally
    MockUser mockCurrentUser = MockUser(id: "1", username: "First User", friendIds: [
      "2",
      "3"
    ]);
    return mockCurrentUser;
  }

  @override
  void initState() {
    super.initState();
    callGetPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MockProfileScreen(
                              mockCurrentUser: callGetUser(),
                            )));
              },
            ),
          ),
        ],
      ),
      body: MockPostList(),
    );
  }
}

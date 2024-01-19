// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mock_couch/services/mock_posts_service.dart';

class MockPostDetailScreen extends StatefulWidget {
  const MockPostDetailScreen({
    super.key,
    required this.postIndex,
  });

  final int postIndex;

  @override
  State<MockPostDetailScreen> createState() => _MockPostDetailScreenState();
}

class _MockPostDetailScreenState extends State<MockPostDetailScreen> {
  void _incrementCommentCount() {
    setState(() {
      MockPostsServce.mockPosts[widget.postIndex].commentIds++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MockPostsServce.mockPosts[widget.postIndex].title),
      ),
      body: Center(
        child: Column(
          children: [
            Text(MockPostsServce.mockPosts[widget.postIndex].body),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _incrementCommentCount,
                  child: Icon(Icons.comment),
                ),
                SizedBox(width: 4.0),
                Text('${MockPostsServce.mockPosts[widget.postIndex].commentIds} comments'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

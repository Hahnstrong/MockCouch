// ignore_for_file: prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mock_couch/screens/mock_post_detail_screen.dart';
import 'package:mock_couch/services/mock_posts_service.dart';

class MockPostCard extends StatefulWidget {
  final int postIndex;

  MockPostCard({
    super.key,
    required this.postIndex,
  });

  @override
  _MockPostCardState createState() => _MockPostCardState();
}

class _MockPostCardState extends State<MockPostCard> {
  @override
  void initState() {
    super.initState();
  }

  void _incrementCommentCount() {
    setState(() {
      MockPostsServce.mockPosts[widget.postIndex].commentIds++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MockPostDetailScreen(postIndex: widget.postIndex))),
      child: Card(
        elevation: 2.0,
        margin: EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MockPostsServce.mockPosts[widget.postIndex].title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Row(
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
      ),
    );
  }
}

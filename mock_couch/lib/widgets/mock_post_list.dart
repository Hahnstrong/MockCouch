// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:mock_couch/services/mock_posts_service.dart';
import 'package:mock_couch/widgets/mock_post_card.dart';

class MockPostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: MockPostsServce.getLength(),
      itemBuilder: (context, index) {
        return MockPostCard(postIndex: index);
      },
    );
  }
}

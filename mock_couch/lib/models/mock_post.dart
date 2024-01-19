class MockPost {
  final String postId;
  final String userId;
  final String title;
  final String body;
  final List<String> commentIds;

  MockPost({
    required this.postId,
    required this.userId,
    required this.title,
    required this.body,
    required this.commentIds,
  });
}

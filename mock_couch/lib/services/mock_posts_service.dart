import 'package:mock_couch/models/mock_post.dart';

class MockPostsServce {
  static List<MockPost> mockPosts = [];

  static void getPostsFromFirestore() {
    // Example of if I was using firebase as my actual database. Should be async and a future

    // CollectionReference postsCollection = FirebaseFirestore.instance.collection('posts');

    // try {
    //   QuerySnapshot querySnapshot = await postsCollection.get();

    //   // Convert the QuerySnapshot to a list of Post objects
    //   List<MockPost> mockPosts = querySnapshot.docs.map((doc) {
    //     Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    //     return MockPost(
    //       postId: doc.post_id,
    //       userId: data['user_id'],
    //       title: data['title'],
    //       body: data['body'],
    //       commentIds: data['commentIds'],
    //     );
    //   }).toList();

    //   return mockPosts;
    // } catch (e) {
    //   // Handle errors
    //   print('Error fetching posts: $e');
    //   throw Exception('Failed to load mockPosts');
    // }

    List<MockPost> getPosts() {
      var mockPost1 = MockPost(
        postId: "1",
        userId: "2",
        title: "My First Post",
        body: "The body of my first post, and I am the second user.",
        commentIds: 3,
      );
      var mockPost2 = MockPost(
        postId: "2",
        userId: "2",
        title: "My Second Post",
        body: "The body of my second post, and I am the second user.",
        commentIds: 1,
      );
      var mockPost3 = MockPost(
        postId: "3",
        userId: "3",
        title: "My First Post",
        body: "The body of my first post, but I am the third user.",
        commentIds: 0,
      );

      return [
        mockPost1,
        mockPost2,
        mockPost3
      ];
    }

    mockPosts = getPosts();
  }

  static int getLength() {
    return mockPosts.length;
  }
}

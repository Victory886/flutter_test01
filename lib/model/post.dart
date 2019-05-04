class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
      title: "aaa",
      author: "Terry",
      imageUrl: "https://img.ivsky.com/img/tupian/pre/201810/18/feiji-007.jpg"),
  Post(
      title: "aaa",
      author: "Terry",
      imageUrl: "https://img.ivsky.com/img/tupian/pre/201810/18/feiji-003.jpg"),
  Post(
      title: "aaa",
      author: "Terry",
      imageUrl: "http://img.ivsky.com/img/tupian/pre/201810/18/feiji-004.jpg"),
  Post(
      title: "aaa",
      author: "Terry",
      imageUrl: "http://img.ivsky.com/img/tupian/pre/201810/18/feiji-004.jpg"),
  Post(
      title: "aaa",
      author: "Terry",
      imageUrl: "http://img.ivsky.com/img/tupian/pre/201810/18/feiji-004.jpg"),
];

import 'package:blog_club/presentation/page/auth/auth_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BlogClub());
}

class BlogClub extends StatelessWidget {
  const BlogClub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog Club',
      home: AuthPage(),
    );
  }
}

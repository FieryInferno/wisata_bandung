import 'package:flutter/material.dart';
import 'package:wisata_bandung/blog_list.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const BlogList(),
    );
  }
}

void main() => runApp(const MyApp());

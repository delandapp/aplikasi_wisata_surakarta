import 'package:flutter/material.dart';
import 'package:flutterdicoding/pages/detail_pages.dart';
 
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Surakarta',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}
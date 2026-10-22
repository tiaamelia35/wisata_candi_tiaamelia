
import 'package:flutter/material.dart';
import 'package:wisata_candi_tiaamelia/data/candi_data.dart';
import 'package:wisata_candi_tiaamelia/screens/detail_screen.dart';
import 'package:wisata_candi_tiaamelia/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      // home: DetailScreen(candi: candiList[1]),
      home: ProfileScreen(),
    );
  }
}

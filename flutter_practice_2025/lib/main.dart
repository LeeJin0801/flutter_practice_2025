import 'package:flutter/material.dart';
//import 'pratice_code/code1_basic_widgets.dart';
//import 'pratice_code/code2_layout_widgets.dart';
import 'challenge_code/challenge1_copy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // 디버그 배너 제거
      home: CopyWidgets(),
    );
  }
}

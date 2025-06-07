import 'package:flutter/material.dart';

class BasicWidget extends StatelessWidget {
  const BasicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '진이의 Flutter 앱',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w100,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Oh Yeah~!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 30),
            const Icon(
              Icons.star,
              size: 80,
              color: Colors.yellow,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                print('Flutter 버튼이 클릭되었습니다!');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade200,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              ),
              child: const Text(
                '다음 위젯으로!',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

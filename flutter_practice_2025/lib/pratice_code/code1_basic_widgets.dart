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
          // Column : 여러 위젯을 세로 방향으로 배치
          mainAxisAlignment: MainAxisAlignment.center, // 세로축 정렬(가운데)
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
            // ElevatedButton : 클릭 가능한 버튼 위젯
            ElevatedButton(
              onPressed: () {
                // onPressed : 버튼이 눌렸을 때 실행될 함수
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

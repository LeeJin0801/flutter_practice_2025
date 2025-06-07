import 'package:flutter/material.dart';

class LayoutWidgets extends StatelessWidget {
  const LayoutWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter 레이아웃 연습'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 1. Container 와 Text 위젯
            Container(
              // 배경생, 패딩, 마진을 가진 박스 형태의 위젯
              color: Colors.teal[100],
              // width: 250,
              // height: 80,
              padding: const EdgeInsets.all(20.0), // 내부 여백 - 텍스트 사이의 공간
              margin: const EdgeInsets.only(bottom: 20.0), // 외부 여백
              child: const Text(
                '안녕 Container!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ),

            // 2. Row 위젯 안에 여러 Icon 위젯 가로로 배치
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 공간을 균등하게
              // mainAxisAlignment: MainAxisAlignment.start, // 왼쪽 정렬 - 기본값
              // mainAxisAlignment: MainAxisAlignment.end, // 우측 정렬
              // mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
              children: <Widget>[
                Icon(Icons.home, size: 50, color: Colors.purple),
                Icon(Icons.settings, size: 50, color: Colors.orange),
                Icon(Icons.info, size: 50, color: Colors.green),
              ],
            ),

            // 3. Row 안에 Expanded 위젯을 사용하여 공간 분배
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  flex: 1, // 공간 분배 비율(전체 중 1/3)
                  child: Container(
                    color: Colors.red[100],
                    height: 100,
                    child: const Center(
                        child: Text('빨강', style: TextStyle(fontSize: 20))),
                  ),
                ),
                Expanded(
                  flex: 2, // 공간 분배 비율(전체 중 10/3)
                  child: Container(
                    color: Colors.blue[100],
                    height: 100, // 다른 요소보다 작게 하면 중앙 수평선을 기준으로 줄어든다.
                    child: const Center(
                        child: Text('파랑', style: TextStyle(fontSize: 20))),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // 4. Padding 위젯으로 특정 위젯에만 여백 추가
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              // const EdgeInsets.all(50.0),
              child: ElevatedButton(
                  onPressed: () {
                    print('패딩 적용된 버튼 클릭!');
                  },
                  // style: ElevatedButton.styleFrom( // 버튼의 스타일은 styleFrom 사용
                  //   padding: EdgeInsets.all(20.0),
                  // ), 내부 여백으로 작용
                  child: const Text('패딩 있는 버튼')),
            )
          ],
        ),
      ),
    );
  }
}

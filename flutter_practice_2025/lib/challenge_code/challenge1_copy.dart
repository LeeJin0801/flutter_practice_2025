import 'package:flutter/material.dart';
import 'challenge1_copy_datesellector.dart';

class CopyWidgets extends StatelessWidget {
  const CopyWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Row(
          children: [
            const Text(
              '6.9 월',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Icon(
              Icons.arrow_drop_down,
              size: 30,
              color: Colors.white,
            ),
            const Spacer(),
            Opacity(
              opacity: 0.5,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Text(
                  'PRO',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ),
            const SizedBox(width: 5.0),
            const Icon(Icons.notifications_rounded, color: Colors.white),
            const SizedBox(width: 5.0),
            const Icon(Icons.person, color: Colors.white),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DateSellectorWidget(),
          const Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.auto_graph_outlined,
                  color: Colors.blueAccent,
                ),
                SizedBox(width: 5.0),
                Text(
                  '이번 주 잘하고 있나? 확인해봐요.',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(width: 90.0),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 18,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            margin: const EdgeInsets.only(
                top: 20.0, right: 10.0, left: 10.0), // 외부 좌우 여백 및 상하 여백
            padding: const EdgeInsets.all(50.0), // 내부 여백
          ),
        ],
      ),
    );
  }
}

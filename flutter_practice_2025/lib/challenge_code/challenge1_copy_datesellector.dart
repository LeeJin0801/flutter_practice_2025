import 'package:flutter/material.dart';

class DateSellectorWidget extends StatelessWidget {
  const DateSellectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> weekdays = ['월', '화', '수', '목', '금', '토', '일'];
    final List<int> dates = [9, 10, 11, 12, 13, 14, 15];
    final int selectedDate = 9;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.indigoAccent,
      ),
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          7,
          (index) {
            final String currentDay = weekdays[index];
            final int currentDate = dates[index];
            final bool isSelected = currentDate == selectedDate;

            return Column(
              children: [
                SizedBox(
                  height: 30.0,
                  child: Center(
                    child: currentDay == '월'
                        ? CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Text(
                              currentDay,
                              style: const TextStyle(
                                  color: Colors.indigoAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0),
                            ),
                          )
                        : Text(
                            currentDay,
                            style: const TextStyle(
                              color: Colors.white30,
                              fontSize: 13.0,
                            ),
                          ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '$currentDate',
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.white70,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

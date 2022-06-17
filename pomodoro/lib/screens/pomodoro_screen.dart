import 'package:flutter/material.dart';

class PomodoroScreen extends StatefulWidget {
  const PomodoroScreen({Key? key}) : super(key: key);

  @override
  State<PomodoroScreen> createState() => _PomodoroScreenState();
}

class _PomodoroScreenState extends State<PomodoroScreen> {
  final List<Widget> _runningButtons = [
    ElevatedButton(
      onPressed: () {},
      child: Text(
        1 == 2 ? '계속하기' : '일시정지',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      style: ElevatedButton.styleFrom(primary: Colors.blue),
    ),
    Padding(
      padding: EdgeInsets.all(20),
    ),
    ElevatedButton(
      onPressed: () {},
      child: Text(
        '포기하기',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      style: ElevatedButton.styleFrom(primary: Colors.grey),
    ),
  ];
  final List<Widget> _stoppedButtons = [
    ElevatedButton(
      onPressed: () {},
      child: Text(
        '시작하기',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      style: ElevatedButton.styleFrom(
          primary: 1 == 2 ? Colors.green : Colors.blue),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('뽀모도로 타이머 앱'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.6,
              child: const Center(
                child: Text(
                  '00:00',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold),
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: 1 == 2 ? Colors.green : Colors.blue,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: 1 == 2 // 휴식 중 ? 버튼 없음 : 버튼 있음
                  ? const []
                  : 1 == 2 //정지 ? 정지 중 버튼 : 작업 중 버튼
                      ? _stoppedButtons
                      : _runningButtons,
            )
          ],
        ),
      ),
    );
  }
}

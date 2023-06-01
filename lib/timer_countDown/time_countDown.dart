import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TimerCountDown extends StatefulWidget {
  const TimerCountDown({super.key});

  @override
  State<TimerCountDown> createState() => _TimerCountDownState();
}

class _TimerCountDownState extends State<TimerCountDown> {
  final CountdownTimer _countdownTimer = CountdownTimer();

  Timer? countdownTimer;
  Duration myDuration = const Duration(days: 5);
  @override
  void initState() {
    _countdownTimer.startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _countdownTimer.cancelTimer();
    super.dispose();
  }

  /// Timer related methods ///
  // Step 3
  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  // Step 4
  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  // Step 5
  void resetTimer() {
    stopTimer();
    setState(() => myDuration = const Duration(days: 5));
  }

  // Step 6
  void setCountDown() {
    const reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final days = strDigits(myDuration.inDays);
    // Step 7
    final hours = strDigits(myDuration.inHours.remainder(24));
    final minutes = strDigits(myDuration.inMinutes.remainder(60));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return Scaffold(
      //appBar: ...,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            // Step 8
            Text(
              ' $days:$hours:$minutes:$seconds',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 50),
            ),
            const SizedBox(height: 20),
            // Step 9
            ElevatedButton(
              onPressed: startTimer,
              child: const Text(
                'Start',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            // Step 10
            ElevatedButton(
              onPressed: () {
                if (countdownTimer == null || countdownTimer!.isActive) {
                  stopTimer();
                }
              },
              child: const Text(
                'Stop',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            // Step 11
            ElevatedButton(
                onPressed: () {
                  resetTimer();
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: StreamBuilder(
                stream: _countdownTimer.remainingSeconds,
                initialData: _countdownTimer.remainingSeconds,
                builder: (context, AsyncSnapshot snapshot) {
                  final remainingSeconds = snapshot.data;
                  return Text('$remainingSeconds seconds remaining');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CountdownTimer {
  int _secondsRemaining = 0;
  Timer? _timer;
  final StreamController<int> _controller = StreamController<int>();

  Stream<int> get remainingSeconds => _controller.stream;

  Future<void> startTimer() async {
    final prefs = await SharedPreferences.getInstance();
    _secondsRemaining = prefs.getInt('timer') ?? 60;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      if (_secondsRemaining > 0) {
        _secondsRemaining--;
        await prefs.setInt('timer', _secondsRemaining);
        _controller.add(_secondsRemaining);
      } else {
        _timer!.cancel();
      }
    });
  }

  void cancelTimer() {
    _timer?.cancel();
    _controller.close();
  }
}


// class CountdownTimer {
//   int _secondsRemaining = 0;
//   Timer? _timer;

//   Future<void> startTimer() async {
//     final prefs = await SharedPreferences.getInstance();
//     _secondsRemaining = prefs.getInt('timer') ?? 60;

//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
//       if (_secondsRemaining > 0) {
//         _secondsRemaining--;
//         await prefs.setInt('timer', _secondsRemaining);
//       } else {
//         _timer!.cancel();
//       }
//     });
//   }

//   void cancelTimer() {
//     _timer?.cancel();
//   }

//   int get remainingSeconds => _secondsRemaining;
// }

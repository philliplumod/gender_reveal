import 'dart:async';

import 'package:flutter/material.dart';

class CountdownModal extends StatefulWidget {
  final Function onCountdownComplete;

  const CountdownModal({required this.onCountdownComplete, Key? key})
      : super(key: key);

  @override
  _CountdownModalState createState() => _CountdownModalState();
}

class _CountdownModalState extends State<CountdownModal> {
  int countdown = 10;

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  void startCountdown() {
    const oneSecond = Duration(seconds: 1);
    Timer.periodic(oneSecond, (Timer timer) {
      setState(() {
        if (countdown > 0) {
          countdown--;
        } else {
          timer.cancel();
          widget.onCountdownComplete();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Refresh the browser if you are not ready!'),
      content: Text('Proceeding in $countdown seconds...'),
    );
  }
}

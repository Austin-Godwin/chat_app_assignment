import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
          child: Text(
        'Chat Screen Goes Here',
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Colors.black),
      )),
    ));
  }
}

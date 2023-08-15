import 'package:flutter/material.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Text("기록", style: TextStyle(
          fontSize: 25,
        ),)
    );
  }
}

import 'package:flutter/material.dart';
import 'package:theapp/constants.dart';

class TaskItem extends StatelessWidget {
  TaskItem({this.text, this.isComplete});
  final text;
  final isComplete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              text,
              style: kTaskStyle,
            ),
            Checkbox(
              value: false,
              onChanged: (value) {},
            )
          ],
        ),
      ),
    );
  }
}

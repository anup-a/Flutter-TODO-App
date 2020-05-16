import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:theapp/components/custom_button.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.white,
    //   child: Container(
    // decoration: BoxDecoration(
    //   borderRadius: BorderRadius.only(
    //     topLeft: Radius.circular(50.0),
    //   ),
    // ),
    //   ),
    // );

    return Container(
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
            child: Container(
              decoration: const BoxDecoration(color: Color(0xff1d5a76)),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Color(0xff1d5a76)),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 0.0),
                      child: Text(
                        'Add Task',
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/clip-list-is-empty.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0),
                            child: TextField(
                              textAlign: TextAlign.center,
                              autofocus: true,
                              decoration: InputDecoration(
                                hintText: 'Enter your Task',
                              ),
                            ),
                          ),
                        ),
                        CustomAddButton(
                          icon: FlutterIcons.add_to_list_ent,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

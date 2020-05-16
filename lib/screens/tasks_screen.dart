import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:theapp/components/add_task_screen.dart';
import 'package:theapp/constants.dart';
import 'package:theapp/components/custom_button.dart';
import 'package:theapp/components/task_list_view.dart';

class TasksScreen extends StatelessWidget {
  final tasksList = [
    {"text": "⚡ Item 1", "isComplete": false},
    {"text": "🐱‍ Item 2", "isComplete": false},
    {"text": "🦄 Item 3", "isComplete": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30.0,
            top: 30.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      child: CircleAvatar(
                        child: Icon(
                          FlutterIcons.list_ent,
                          size: 35.0,
                          color: Colors.lightBlueAccent,
                        ),
                        backgroundColor: Colors.white,
                        radius: 25.0,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[200],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/backs.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'Todoey',
                            style: kHeadingStyle,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            '12 Tasks',
                            style: kSubStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: TaskListView(
                          tasksList: tasksList,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20.0,
                              bottom: 20.0,
                              top: 20.0,
                            ),
                            child: CustomAddButton(
                              icon: Icons.add,
                              ontap: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) {
                                      return SingleChildScrollView(
                                        child: Container(
                                          color: Color(0xff1d5a76),
                                          padding: EdgeInsets.only(
                                              bottom: MediaQuery.of(context)
                                                  .viewInsets
                                                  .bottom),
                                          child: AddTaskScreen(),
                                        ),
                                      );
                                    });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

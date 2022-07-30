import 'package:flutter/material.dart';
import 'package:testproject/widgets.dart';

class Taskpage extends StatefulWidget {
  @override
  TaskpageState createState() => TaskpageState();
}

class TaskpageState extends State<Taskpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 24.0,
                      bottom: 6.0,
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Image(
                              image: AssetImage(
                                'assets/images/back_arrow_icon.png',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            onSubmitted: (value) {
                              print("Field value,$value");
                            },
                            decoration: InputDecoration(
                              hintText: "Enter Task Title",
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF211551),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter Description for the task..',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 24.0,
                          )),
                    ),
                  ),
                  TodoWidget(
                    text: "create your first task",
                    isDone: true,
                  ),
                  TodoWidget(
                    text: "create your second task",
                    isDone: true,
                  ),
                  TodoWidget(
                    isDone: false,
                  ),
                  TodoWidget(
                    isDone: false,
                  )
                ],
              ),
              Positioned(
                bottom: 20.0,
                right: 24.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Taskpage()));
                  },
                  child: Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        color: Color(0xFFFE3577),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Image(
                      image: AssetImage('assets/images/delete_icon.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

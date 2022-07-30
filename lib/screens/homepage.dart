import 'package:flutter/material.dart';
import 'package:testproject/widgets.dart';

class Homepage extends StatefulWidget {
  @override
  HomepageState createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          color: Color(0xFFF6F6F6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  bottom: 32.0,
                ),
                child: Image(
                  image: AssetImage(
                    'assets/images/logo.png',
                  ),
                ),
              ),
              TaskCard(
                title: "Get started",
                desc:
                    "welcome to todo,you can edit and delete your todos here!",
              ),
              TaskCard(),
            ],
          ),
        ),
      ),
    );
  }
}

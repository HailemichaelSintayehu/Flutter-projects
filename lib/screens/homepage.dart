import 'package:flutter/material.dart';
import 'package:testproject/screens/taskpage.dart';
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
        title: Text(
          "እቅድ አውጣ",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          color: Color(0xFFF6F6F6),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 32.0,
                      bottom: 32.0,
                    ),
                    child: Image(
                      image: AssetImage(
                        'assets/images/logo.png',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        TaskCard(
                          title: "Get started",
                          desc:
                              "welcome to todo,you can edit and delete your todos here!",
                        ),
                        TaskCard(),
                        TaskCard(),
                        TaskCard(),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 20.0,
                right: 0.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Taskpage()));
                  },
                  child: Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF7349FE), Color(0XFF643FDB)],
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(0.0, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Image(
                      image: AssetImage('assets/images/add_icon.png'),
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

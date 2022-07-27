import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Hello Flutter',
              style: TextStyle(
                color: Colors.white,
                fontSize: 60.0,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Welcome to Mereb Tech"),
              FlatButton(
                onPressed: () {},
                color: Colors.amber,
                child: Text(
                  'click me!',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                child: Text('inside container'),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
              elevation: 8.0,
              child: Icon(Icons.add),
              backgroundColor: Colors.red,
              onPressed: () {
                print("I am Floating Action Button");
              }),
        ),
      ),
    );

// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget View(String title,String body ,String button) {
    return Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 35, 11, 63),
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(3.0))),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(right: 8),
                        child:
                            Icon(Icons.flutter_dash, color: Colors.lightBlue)),
                    Text(
                      title,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 0,
                          ),
                          child: Text(
                            body,
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                ),
                Row(
                  children:  [
                    Text(
                      button,
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 8),
                        child:
                            Icon(Icons.arrow_forward, color: Colors.lightBlue))
                  ],
                )
              ]));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Widget App'),
          ),
          body: ListView(
            children: [
              View("FLUTTER", "Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.", "EXPLORE FLUTTER"),
              View("DART", "Dart is a client-optimized language for fast apps on any platform. It is developed by Google and is used to build mobile, desktop, server, and web applications.", "EXPLORE DART"),
              View("REACT", "React is a JavaScript library for building user interfaces. It is maintained by Facebook, Instagram and a community of individual developers and companies.", "EXPLORE REACT"),
            ],padding: EdgeInsets.all(8),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
              ),
            ],
            currentIndex: 0,
            selectedItemColor: Colors.purple[900],
          ),
          ),
          
      
    );
  }
}

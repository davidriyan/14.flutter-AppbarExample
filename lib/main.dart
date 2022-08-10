import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.adb, color: Colors.white),
          title: Text(
            'AppBar Example',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: Icon(Icons.logout))
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/pattern1.jpeg"),
                  fit: BoxFit.none,
                  repeat: ImageRepeat.repeat),
              gradient: LinearGradient(
                  colors: <Color>[Colors.blue, Colors.purple],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
            ),
          ),
        ),
      ),
    );
  }
}

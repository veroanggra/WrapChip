import 'package:flutter/material.dart';
import 'package:untitled/chip_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const WrapWidgetDemo(),
    );
  }
}

class ChipComp extends StatelessWidget {
  const ChipComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _dynamicChips = ['Health', 'Food', 'Nature'];
    return Scaffold(
      body: Center(
        child: Wrap(
          spacing: 6.0,
          runSpacing: 6.0,
          children: <Widget>[
            chip('Health', Color(0xFFff8a65)),
            chip('Food', Color(0xFF4fc3f7)),
            chip('Lifestyle LALALLAAAA', Color(0xFF9575cd)),
            chip('Sports', Color(0xFF4db6ac)),
            chip('Nature', Color(0xFF5cda65)),
            chip('Learn', Color(0xFFacbb65)),
            chip('Sports', Color(0xFF4db6ac)),
            chip('Nature', Color(0xFF5cda65)),
            chip('Learn', Color(0xFFacbb65))
          ],
        ),
      ),
    );
  }
}

Widget chip(String label, Color color) {
  return Chip(
    labelPadding: EdgeInsets.all(5.0),
    avatar: CircleAvatar(
      backgroundColor: Colors.grey.shade600,
      child: Text(label[0].toUpperCase()),
    ),
    label: Text(
      label,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    backgroundColor: color,
    elevation: 6.0,
    shadowColor: Colors.grey[60],
    padding: EdgeInsets.all(6.0),
  );
}

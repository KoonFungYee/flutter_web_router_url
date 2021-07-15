import 'package:flutter/material.dart';
import 'package:router_url/second_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Container(
            width: 100,
            height: 30,
            color: Colors.blue,
            child: Text('SecondPage'),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String? id;
  const SecondPage({Key? key, this.id}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  void initState() {
    if (widget.id != null) {
      print(widget.id);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/first');
          },
          child: Container(
            width: 100,
            height: 30,
            color: Colors.blue,
            child: Text('Home Page'),
          ),
        ),
      ),
    );
  }
}

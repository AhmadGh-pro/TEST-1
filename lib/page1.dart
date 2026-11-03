import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _MyAppState();
}

class _MyAppState extends State<Page1> {
  @override
  void initState() {
    print("page1 initstate");
    super.initState();
  }

  @override
  void dispose() {
    print("page1 dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('Title')),
      body: Container(
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('go back'),
          ),
        ),
      ),
    );
  }
}

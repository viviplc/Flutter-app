import 'package:flutter/material.dart';

class customewidget extends StatelessWidget {
  const customewidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: new Container(
        color: Colors.orange,
        margin: const EdgeInsets.all(15.0),
        child: new Container(
          color: Colors.green,
          margin: const EdgeInsets.all(15.0),
          child: new Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(15.0),
            child: new Container(
              color: Colors.yellow,
              margin: const EdgeInsets.all(15.0),
            ),
          ),
        ),
      ),
    );
  }
}

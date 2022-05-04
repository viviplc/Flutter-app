import 'package:flutter/material.dart';

class firstPage extends StatelessWidget {
  final String mText;

  firstPage(this.mText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(mText),),
      body: Center(
        child: Text(mText),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard()
));

class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[666],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor:Colors.lightBlue[555],
        elevation: 0.0,
      ),
      
    );
  }
}
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
  ));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

    int ninjaLevel =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[666],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[555],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel +=1;
            
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue[800],
        ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/rajni.jpg'),
                radius: 40.0,
                
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.blueGrey[600],
            ),
            Text(
              'NAME',
              style: TextStyle(color: Colors.blueGrey, letterSpacing: 2.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Dheep',
              style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Text(
              'NINJA LEVEL',
              style: TextStyle(color: Colors.blueGrey, letterSpacing: 2.0),
            ),
            SizedBox(height: 10.0),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Row(children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10.0),
              Text(
                'dheepd@jgjfdk.com',
                style: TextStyle(
                  color: Colors.blueAccent[600],
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}


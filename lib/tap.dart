import 'package:flutter/material.dart';

class MyTap extends StatefulWidget {
  @override
  _MyTapState createState() => _MyTapState();
}

class _MyTapState extends State<MyTap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureApp'),
        centerTitle: false,
        actions: <Widget>[
          TextButton(
            child: Text(
              'Form Page',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/form');
            },
          ),
          TextButton(
            child: Text(
              'Dropdown Page',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/dropdown');
            },
          ),
          TextButton(
            child: Text(
              'Toast Page',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/toast');
            },
          )
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print('Area kotak telah ditekan');
          },
          child: Container(
            height: 60.0,
            width: 120.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
                child: Text(
              'Tekan',
              style: TextStyle(
                color: Colors.white,
              ),
            )),
          ),
        ),
      ),
    );
  }
}

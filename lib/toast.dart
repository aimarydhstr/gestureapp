import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyToast extends StatefulWidget {
  @override
  _MyToastState createState() => _MyToastState();
}

class _MyToastState extends State<MyToast> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Tindakan yang akan diambil ketika tombol kembali ditekan
              Navigator.of(context).pop();
            },
          ),
          title: Text('GestureApp'),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Center(
            child: ElevatedButton(
              onPressed: showToast,
              child: Text('Tekan untuk menampilkan toast'),
            ),
          ),
        ),
      ),
    );
  }

  void showToast() {
    Fluttertoast.showToast(
      msg: 'Demo notifikasi toast',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.yellow,
    );
  }
}

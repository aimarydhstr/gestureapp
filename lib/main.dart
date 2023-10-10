import 'package:flutter/material.dart';
import 'tap.dart';
import 'form.dart';
import 'dropdown.dart';
import 'toast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GestureApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyTap(),
        '/form': (context) => MyForm(),
        '/dropdown': (context) => MyDropdown(),
        '/toast': (context) => MyToast(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

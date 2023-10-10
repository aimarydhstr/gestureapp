import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureApp'),
        centerTitle: false,
      ),
      body: new Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'Masukkan nama anda',
                labelText: 'Nama',
              ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Tolong diisi terlebih dahulu';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.phone),
                hintText: 'Masukkan no telepon',
                labelText: 'Telepon',
              ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Tolong diisi terlebih dahulu';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.calendar_today),
                hintText: 'Masukkan tanggal lahir',
                labelText: 'Tanggal lahir',
              ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Tolong diisi terlebih dahulu';
                }
                return null;
              },
            ),
            Container(
              padding: const EdgeInsets.only(left: 0, top: 30.0),
              child: new ElevatedButton(
                child: const Text('Kirim'),
                onPressed: () {
                  // It returns true if the form is valid, otherwise returns false
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a Snackbar.
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('Data diproses')));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

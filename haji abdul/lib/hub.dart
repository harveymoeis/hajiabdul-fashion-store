import 'package:flutter/material.dart';

class HubungiPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<HubungiPage> {
  final _formKey = GlobalKey<FormState>();

  String? _name;
  String? _email;
  String? _message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hubungi Kami'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nama',
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Mohon isi nama Anda';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Mohon isi email Anda';
                  }
                  if (value != null && !value.contains('@')) {
                    return 'Mohon masukkan email yang valid';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Pesan',
                  prefixIcon: Icon(Icons.message),
                ),
                maxLines: 5,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Mohon isi pesan Anda';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _message = value;
                  });
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState?.save();
                    // TODO: Kirim pesan pengguna
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Pesan terkirim')),
                    );
                  }
                },
                child: Text('Kirim'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

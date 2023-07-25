import 'package:flutter/material.dart';

class RegristerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Akun'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Kode Member',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nama Lengkap',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'No Hp',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Alamat'
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Proses pendaftaran akun
              },
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
                onPrimary: Colors.white,
              ),
              child: Text('Daftar'),
            ),
          ],
        ),
      ),
    );
  }
}

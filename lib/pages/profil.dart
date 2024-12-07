import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://media1.tenor.com/m/YS05rtOt28IAAAAC/anthony-manchester-united.gif',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text('NPM : 2210010321', style: TextStyle(fontSize: 20)),
            Text('Nama : Wanda', style: TextStyle(fontSize: 20)),
            Text('Kelas : 5N', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}

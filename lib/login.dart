import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.pink, Colors.orange])),
        ),
        leading: IconButton(
          onPressed: () {
            print("ini adalah tombol menu");
          },
          icon: Icon(Icons.menu),
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('Ini adalah tombol menu');
            },
            icon: Icon(Icons.settings),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              print('ini pencarian');
            },
            icon: Icon(Icons.search),
            color: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                  'https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExdWhrazkwemR6dXQ0M2E5aWF4d29qOWplc2R2OXVhd2doYmxubHMwMSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/M8xmO5ZcLPtAY/giphy.webp'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.8)),
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.8)),
                labelText: 'Password',
                prefixIcon: Icon(Icons.password),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                print('ini tombol masuk');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(50),
                backgroundColor: (Colors.blueAccent),
                shadowColor: Colors.blueGrey,
                elevation: 10,
              ),
              child: Text(
                'MASUK',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

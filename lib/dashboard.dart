import 'package:aplikasi_pegawai/login.dart';
import 'package:aplikasi_pegawai/pages/calendar.dart';
import 'package:aplikasi_pegawai/pages/home.dart';
import 'package:aplikasi_pegawai/pages/profil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Profil(),
    Calendar(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard', style: TextStyle(color: Colors.white)),
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
              Get.defaultDialog(
                title: 'Apakah anda ingin keluar ?',
                content: Container(),
                textConfirm: 'YA',
                textCancel: 'Tidak',
                onConfirm: () {
                  Get.offAll(login());
                },
                onCancel: () {
                  Get.back();
                },
              );
            },
            icon: Icon(Icons.logout),
            color: Colors.white,
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.orange,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'Kalender'),
          ]),
    );
  }
}

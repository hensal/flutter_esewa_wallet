import 'package:esewa_wallet/barcode.dart';
import 'package:esewa_wallet/home.dart';
import 'package:esewa_wallet/login.dart';
import 'package:esewa_wallet/more.dart';
import 'package:esewa_wallet/support.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const Home(),
    const Login(),
    const Barcode(),
    const Support(),
    const More(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dock_outlined,
                color: Colors.green,
              ),
              label: 'Statements',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bar_chart_rounded,
                color: Colors.green,
              ),
              label: 'Barcode',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.help,
                color: Colors.green,
              ),
              label: 'Support',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
                color: Colors.green,
              ),
              label: 'More',
            ),
          ],
        ));
  }
}

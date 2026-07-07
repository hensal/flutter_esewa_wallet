import 'package:flutter/material.dart';

class Barcode extends StatelessWidget {
  const Barcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barcode Screen'),
      ),
      body: Center(
        child: Text('Barcode Content'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_barcode_gun_and_camera_printer/payment.dart';

import 'barcode.dart';
import 'barcode_gun.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter - Printer, Barcode'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(
              builder: (_) => Payment(),
            ),), child: Text('Printer')),

            ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(
              builder: (_) => Barcode(),
            ),), child: Text('Barcode using camera')),

            ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(
              builder: (_) => BarcodeGun(),
            ),), child: Text('Barcode using a gun'))
          ],
        ),
      ),
    );
  }
}

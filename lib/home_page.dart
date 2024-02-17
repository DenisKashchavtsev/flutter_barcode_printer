import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:web_view/barcode.dart';
import 'package:web_view/payment.dart';
import 'package:web_view/print_page.dart';

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

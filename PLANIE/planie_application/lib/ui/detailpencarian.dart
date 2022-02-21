import 'package:flutter/material.dart';
import 'package:planie_application/model/tanaman.dart';

class TanamanDetailsPage extends StatelessWidget {
  final Tanaman tanaman;

  TanamanDetailsPage({required this.tanaman});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.0,
            ),
            Text(
              '${tanaman.nama_tanaman}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              '${tanaman.keterangan}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}

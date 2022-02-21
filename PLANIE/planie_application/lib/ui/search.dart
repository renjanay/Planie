import 'package:flutter/material.dart';
import 'package:planie_application/model/tanaman.dart';
import 'package:planie_application/ui/detailpencarian.dart';

class DetailTanaman extends StatelessWidget {
  final Tanaman tanaman;

  DetailTanaman({required this.tanaman});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          ListTile(
            title: Text('${tanaman.nama_tanaman} ${tanaman.keterangan}'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TanamanDetailsPage(tanaman: tanaman)));
            },
          ),
          Divider(
            thickness: 2.0,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterapp/planieapp/generatedlogowidget/GeneratedLogoWidget.dart';
import 'package:flutterapp/planieapp/generatedmasukwidget/GeneratedMasukWidget.dart';
import 'package:flutterapp/planieapp/generatedmasukwidget2/GeneratedMasukWidget2.dart';
import 'package:flutterapp/planieapp/generateddaftarwidget/GeneratedDaftarWidget.dart';
import 'package:flutterapp/planieapp/generatedverifikasiwidget/GeneratedVerifikasiWidget.dart';
import 'package:flutterapp/planieapp/generatedotpwidget/GeneratedOtpWidget.dart';

void main() {
  runApp(planieApp());
}

class planieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/GeneratedOtpWidget',
      routes: {
        '/GeneratedLogoWidget': (context) => GeneratedLogoWidget(),
        '/GeneratedMasukWidget': (context) => GeneratedMasukWidget(),
        '/GeneratedMasukWidget2': (context) => GeneratedMasukWidget2(),
        '/GeneratedDaftarWidget': (context) => GeneratedDaftarWidget(),
        '/GeneratedVerifikasiWidget': (context) => GeneratedVerifikasiWidget(),
        '/GeneratedOtpWidget': (context) => GeneratedOtpWidget(),
      },
    );
  }
}

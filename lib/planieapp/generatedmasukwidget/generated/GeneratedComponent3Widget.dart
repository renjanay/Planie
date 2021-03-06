import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/planieapp/generatedmasukwidget/generated/GeneratedRectangle1Widget.dart';
import 'package:flutterapp/planieapp/generatedmasukwidget/generated/GeneratedMasukWidget1.dart';

/* Component Component 3
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedComponent3Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 257.0,
      height: 32.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth;

                final double height = constraints.maxHeight;

                return Stack(children: [
                  TransformHelper.translate(
                      x: 0,
                      y: 0,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedRectangle1Widget(),
                      ))
                ]);
              }),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.20622568093385213;

                final double height = constraints.maxHeight * 0.75;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.3968871595330739,
                      y: constraints.maxHeight * 0.1875,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedMasukWidget1(),
                      ))
                ]);
              }),
            )
          ]),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('flutter app')),
        body: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  'lib/images/download.jpeg',
                  width: 200,
                  height: 200,
                ),
              ),
              Container(
                color: Colors.amber,
                padding: EdgeInsets.all(10),
                child: Text("رمضان كريم",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        // overflow: TextOverflow.visible,
                        shadows: [
                          Shadow(color: Colors.blue, offset: Offset(-2, -1))
                        ])),
              )
            ],
          ),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App Flutter"),
        ),
        body: Column(
          children: [
          Container(
          width: double.infinity,
          color: Colors.amber,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/imagesStep.png"),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.amber,
          child: Text("Item one"),
        ),
        Container(
          width: double.infinity,
          color: Colors.amber,
          child: Text("Item one"),
        ),
        Container(
          width: double.infinity,
          color: Colors.black38,
          child: Text("Item one"),
        ),
        Container(
          width: double.infinity,
          color: Colors.amber,
          child: Text("Item one"),
        ),
        OutlinedButton(onPressed: () => checkPrint("ok"), child: Text("Ok")),
        ElevatedButton(onPressed: () => checkPrint("test"), child: Text("Ok"))

    );
  }

  checkPrint(String name) {
    print("check $name");
  }
}


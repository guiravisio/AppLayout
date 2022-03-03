import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Meu primeiro App",
        home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Texto', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: Center(
            child: Container(
          height: (MediaQuery.of(context).size.height),
          width: (MediaQuery.of(context).size.width),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.blueAccent)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.49,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent)),
                        child: (Text('A', textAlign: TextAlign.center)),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4999,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent)),
                        child: Text('B', textAlign: TextAlign.center),
                      )
                    ]),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9999,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent)),
                  child: Text('C', textAlign: TextAlign.center),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4999,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent)),
                        child: Text('D', textAlign: TextAlign.center),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.49,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent)),
                        child: Text('E', textAlign: TextAlign.center),
                      )
                    ]),
              ]),
        )));
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final textStyle = TextStyle(fontSize: 25);
  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo "),
        centerTitle: true,
        elevation: 5.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Numero de clicks:", style: textStyle),
            Text(
              '$conteo',
              style: textStyle,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hola mundo');
          //conteo = conteo + 1;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

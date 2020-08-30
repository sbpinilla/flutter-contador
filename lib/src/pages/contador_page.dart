import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _textStyle = TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull"),
        centerTitle: true,
        elevation: 5.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Numero de clicks:", style: _textStyle),
            Text(
              '$_conteo',
              style: _textStyle,
            )
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    final espacio = SizedBox(
      width: 5.0,
    );

    final contenedor = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 25.0,
        ),
        FloatingActionButton(
          onPressed: _reset,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(
          child: espacio,
        ),
        FloatingActionButton(
          onPressed: _sustraer,
          child: Icon(Icons.remove),
        ),
        espacio,
        FloatingActionButton(
          onPressed: _agregar,
          child: Icon(Icons.add),
        )
      ],
    );

    return contenedor;
  }

  void _agregar() {
    _conteo++;
    setState(() {});
  }

  void _sustraer() {
    if (_conteo > 0) {
      _conteo--;
      setState(() {});
    }
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}

import 'package:flutter/material.dart';
import 'package:triki/interface/play/widget.dart';

class Jueguito extends StatefulWidget {
  const Jueguito({Key? key}) : super(key: key);

  @override
  _JueguitoState createState() => _JueguitoState();
}

class _JueguitoState extends State<Jueguito> {
  int jugador = 1;
  List<List<int>> jugadas = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ];
  Map<int, IconData?> icono = {
    0: Icons.accessibility_new,
    1: Icons.close,
    2: Icons.radio_button_unchecked
  };
  String mensaje = '';

  void actualizar(int f, int c) {
    if (jugadas[f][c] == 0) {
      jugadas[f][c] = jugador;
      jugador = (jugador == 1) ? 2 : 1;
      setState(() {
        mensaje = _verificarGanador();
      });
    }
  }

  String _verificarGanador() {
    // Lógica para verificar al ganador o empate
    // ...

    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tres en Línea'),
      ),
      body: ListView(
        children: [
          Text(
            mensaje,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          // Filas y celdas del tablero utilizando la clase Elemento
          for (int i = 0; i < 3; i++)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int j = 0; j < 3; j++)
                  GestureDetector(
                    onTap: () {
                      actualizar(i, j);
                    },
                    child: Elemento(
                      estado: icono[jugadas[i][j]] ?? Icons.error,
                      jugado: (jugadas[i][j] > 0),
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class IMCTable extends StatelessWidget {
  const IMCTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Classificação do IMC',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Table(
          border: TableBorder.all(),
          columnWidths: const {
            0: FlexColumnWidth(2),
            1: FlexColumnWidth(3),
          },
          children: const [
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'IMC',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Classificação',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('< 18.5'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Abaixo do peso'),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('18.5 - 24.9'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Peso normal'),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('25.0 - 29.9'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Sobrepeso'),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('30.0 - 34.9'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Obesidade Grau I'),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('35.0 - 39.9'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Obesidade Grau II'),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('≥ 40.0'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Obesidade Grau III'),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

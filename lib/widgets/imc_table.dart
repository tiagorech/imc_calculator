import 'package:flutter/material.dart';

class IMCTable extends StatelessWidget {
  final double imc;

  const IMCTable({super.key, required this.imc});

  // Função para verificar o estilo de cada linha com base no valor do IMC
  TableRow _buildTableRow(String range, String classification, bool highlight) {
    return TableRow(
      decoration:
          highlight ? const BoxDecoration(color: Colors.blueAccent) : null,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            range,
            style: TextStyle(
              fontWeight: highlight ? FontWeight.bold : FontWeight.normal,
              color: highlight ? Colors.white : Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            classification,
            style: TextStyle(
              fontWeight: highlight ? FontWeight.bold : FontWeight.normal,
              color: highlight ? Colors.white : Colors.black,
            ),
          ),
        ),
      ],
    );
  }

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
          children: [
            // Cabeçalho da tabela
            const TableRow(
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
            // Linhas com as classificações do IMC
            _buildTableRow('< 18.5', 'Abaixo do peso', imc < 18.5),
            _buildTableRow(
                '18.5 - 24.9', 'Peso normal', imc >= 18.5 && imc <= 24.9),
            _buildTableRow(
                '25.0 - 29.9', 'Sobrepeso', imc >= 25.0 && imc <= 29.9),
            _buildTableRow(
                '30.0 - 34.9', 'Obesidade Grau I', imc >= 30.0 && imc <= 34.9),
            _buildTableRow(
                '35.0 - 39.9', 'Obesidade Grau II', imc >= 35.0 && imc <= 39.9),
            _buildTableRow('≥ 40.0', 'Obesidade Grau III', imc >= 40.0),
          ],
        ),
      ],
    );
  }
}

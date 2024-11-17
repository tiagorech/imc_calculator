import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imc_calculator/widgets/custom_appbar.dart';
import 'package:imc_calculator/widgets/imc_table.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controllerPeso = TextEditingController();
  TextEditingController controllerAltura = TextEditingController();
  String resultadoIMC = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 80),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // TextFormField for Peso
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        keyboardType: const TextInputType.numberWithOptions(),
                        controller: controllerPeso,
                        decoration: InputDecoration(
                          labelText: 'Peso',
                          hintText: 'Digite o seu peso em kg',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, insira seu peso';
                          } else if (double.tryParse(value) == null) {
                            return 'Apenas números são permitidos';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 16),

                    // TextFormField for Altura em cm
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: controllerAltura,
                        decoration: InputDecoration(
                          labelText: 'Altura',
                          hintText: 'Digite sua altura em cm',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, insira sua altura';
                          } else if (int.tryParse(value) == null) {
                            return 'Apenas números inteiros são permitidos';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 32),

                    // Resultado
                    Text(
                      resultadoIMC.isNotEmpty ? 'Seu IMC é $resultadoIMC' : '',
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // IMC Table
                    if (resultadoIMC.isNotEmpty) const IMCTable(),
                    const SizedBox(height: 32),

                    // Buttons
                    Column(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 200,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Theme.of(context).colorScheme.primary),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  double peso =
                                      double.tryParse(controllerPeso.text) ?? 0;
                                  double alturaCm =
                                      double.tryParse(controllerAltura.text) ??
                                          0;
                                  double alturaM = alturaCm /
                                      100; // Conversão de cm para metros
                                  double resultado = peso / (alturaM * alturaM);
                                  resultadoIMC = resultado.toStringAsFixed(2);
                                });
                              }
                            },
                            child: const Text(
                              'Calcular',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        SizedBox(
                          height: 40,
                          width: 200,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.secondary,
                            ),
                            onPressed: () {
                              setState(() {
                                controllerPeso.clear();
                                controllerAltura.clear();
                                resultadoIMC = '';
                              });
                            },
                            child: const Text(
                              'Limpar resultado',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

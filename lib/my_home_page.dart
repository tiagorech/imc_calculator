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
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  keyboardType: const TextInputType.numberWithOptions(),
                  controller: controllerPeso,
                  decoration: InputDecoration(
                    labelText: 'Peso',
                    hintText: 'Digite o seu peso',
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
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  controller: controllerAltura,
                  decoration: InputDecoration(
                    labelText: 'Altura',
                    hintText: 'Digite sua altura (ex: 1.75)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira sua altura';
                    } else if (double.tryParse(value) == null) {
                      return 'Digite uma altura válida (ex: 1.75)';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  resultadoIMC.isNotEmpty ? 'Seu IMC é $resultadoIMC' : '',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                if (resultadoIMC.isNotEmpty) const IMCTable(),
                const SizedBox(
                  height: 32,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.blue),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              double peso =
                                  double.tryParse(controllerPeso.text) ?? 0;
                              double altura =
                                  double.tryParse(controllerAltura.text) ?? 1;
                              double resultado = peso / (altura * altura);
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
                    const SizedBox(
                      height: 32,
                    ),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.blueGrey),
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
        ),
      ),
    );
  }
}

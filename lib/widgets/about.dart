import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre o IMC',
            style: TextStyle(
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Índice de Massa Corporal',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              textAlign: TextAlign.justify,
              'O índice de massa corporal (IMC) é uma medida internacional usada para calcular se uma pessoa está no peso ideal. Desenvolvido pelo polímata Lambert Quételet no fim do século XIX, trata-se de um método fácil e rápido para a avaliação do nível de gordura de cada pessoa, sendo, por isso, um preditor internacional de obesidade adotado pela Organização Mundial da Saúde (OMS).',
            ),
            SizedBox(height: 16),
            Text(
              'Como calcular',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              textAlign: TextAlign.justify,
              'O IMC é determinado pela divisão da massa do indivíduo pelo quadrado de sua altura, em que a massa está em quilogramas e a altura em metros.\n\nIMC = peso / altura²',
            ),
            SizedBox(height: 16),
            Text(
              'Exemplo de IMC',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              textAlign: TextAlign.justify,
              'Para uma pessoa com 90 quilogramas de massa e 1,75 metros de altura, teremos:\nIMC = 90 kg / (1,75 m * 1,75 m) = 29,387 kg/m²',
            ),
            SizedBox(height: 16),
            Text(
              'Tabela de IMC',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              textAlign: TextAlign.justify,
              'Resultado - Situação\n'
              'Abaixo de 17 - Muito abaixo do peso\n'
              'Entre 17 e 18,49 - Abaixo do peso\n'
              'Entre 18,50 e 24,99 - Peso normal\n'
              'Entre 25 e 29,99 - Acima do peso\n'
              'Entre 30 e 34,99 - Obesidade I\n'
              'Entre 35 e 39,99 - Obesidade II (severa)\n'
              'Acima de 40 - Obesidade III (mórbida)',
            ),
            SizedBox(height: 16),
            Text(
              'Índice considerado ideal',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              textAlign: TextAlign.justify,
              'Para adultos, um IMC entre 20 e 22 indica a quantidade ideal, saudável de gordura corporal, o que está associado com maior tempo de vida e menor incidência de doenças graves.'
              'Coincidentemente, essa relação é o que muitas pessoas consideram ser «o mais esteticamente atraente». Entretanto, é importante ressaltar que um índice entre 22 e 25 também é considerado um intervalo bastante aceitável, pois está igualmente associado à boa saúde.',
            ),
            SizedBox(height: 8),
            Text(
                textAlign: TextAlign.justify,
                'Pesquisas recentes apontaram que um IMC entre 23 e 25 é considerado o que garante taxas de sobrevivência mais longas aos indivíduos.O autor Charles E. Phelps corrobora tal informação ao afirmar em um de seus livros:'),
            SizedBox(height: 8),
            Text(
                textAlign: TextAlign.justify,
                'Tanto para mulheres como para homens, a melhor taxa de sobrevivência aparece nos grupos de pessoas cujo IMC está entre 23 e 25. O risco relativo aumenta para pessoas com números mais altos ou mais baixos que esse índice massa corporal tido como “mais seguro”.'),
            SizedBox(height: 16),
            Text(
              'IMC para pessoas acima de 60 anos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
                textAlign: TextAlign.justify,
                'No caso dos idosos (acima de 60 anos) também, temos nesses casos tabelas de referência adequados.Internacionalmente ainda não existe um consenso sobre o padrão de IMC para pessoas com mais de 60 anos. No entanto, o Ministério da Saúde no Brasil, adota e recomenda o padrão de Lipschitz. Ou seja, valores abaixo de 21,9 considera-se peso baixo. Assim como, a partir de 27, entende-se que a pessoa tem sobrepeso. O peso adequado para essa idade seria entre 22 e 26,9.'),
            SizedBox(height: 8),
            Text(
              textAlign: TextAlign.justify,
              'O IMC para idosos deve ser diferente em decorrência da mudança da composição corporal ao longo do tempo. Isso ocorre devido a vários fatores tais como: diminuição da massa muscular, assim como da água corporal, e também um aumento da gordura corporal, principalmente na região abdominal. A própria osteoporose, comum nessa faixa de idade, interfere no cálculo do IMC específico da terceira idade.',
            ),
            SizedBox(height: 8),
            Text(''),
          ],
        ),
      ),
    );
  }
}

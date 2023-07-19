import 'package:flutter/material.dart';
import 'receitas.dart';
import 'receita_datalhes.dart';

void main() {
  runApp(const Receitas());
}

class Receitas extends StatelessWidget {
  const Receitas({super.key});

  // ignore: prefer_typing_uninitialized_variables
  static var samples;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardápio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Cardápio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount:
              samples.length, // Acessando a variável 'samples' corretamente
          itemBuilder: (BuildContext context, int index) {
           return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // ignore: prefer_const_constructors
                     //antes era:  return Text('Detail page');  - fazia com que um placeholder de uma tela detalhes aparecesse.
                     return ReceitaDetalhes(receita: samples[index]);
                    },
                  ),
                );
              },
              //antes era: RETURN TEXT(SAMPLES[INDEX].LABEL) - isso faz com que apenas os nomes das receitas apareção na tela
              child: buildReceitaCard(samples[index]), // Passa o objeto Receita na posição 'index'
            );
          },
        ),
      ),
    );
  }
}

Widget buildReceitaCard(Receita receita) {
  //retorna um cartão de buildReceitaCard(Receita receita)
  return Card(
    elevation:
        2.0, //adicionar sombras aos widgets no Flutter. O valor 2.0 representa a intensidade da elevação ou sombra do widget.
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      //Column é um filho(único) de Card.
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(receita.imageUrl)),
// 5
          const SizedBox(
            height: 14.0,
          ),
//
          // Text busca o atributo label do objeto receita.
          Text(
            receita.label,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino',
            ),
          )
        ],
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'receitas.dart';

class ReceitaDetalhes extends StatefulWidget {
  final Receita receita;

  const ReceitaDetalhes({Key? key, required this.receita}) : super(key: key);

  @override
  _ReceitaDetalhesState createState() {
    return _ReceitaDetalhesState();
  }
}

class _ReceitaDetalhesState extends State<ReceitaDetalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.receita.label),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(image: AssetImage(widget.receita.imageUrl)),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.receita.label,
              style: const TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.receita.ingredientes.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingrediente = widget.receita.ingredientes[index];
                  return Text(
                    '${ingrediente.quantidade} ${ingrediente.medida} ${ingrediente.nome}',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


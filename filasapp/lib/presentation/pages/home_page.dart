import 'package:filasapp/presentation/widgets/barrapesquisa_widget.dart';
import 'package:filasapp/presentation/widgets/estabelecimentocard_widget.dart';
import 'package:filasapp/presentation/widgets/filterbutton_widget.dart';
import 'package:filasapp/presentation/widgets/orderbutton_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Projeto'), centerTitle: true),
      body: Column(
        children: [
          BarraPesquisaWidget(),
          SizedBox(height: 10),
          SizedBox(
            height: 56,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 12),
              children: [
                OrderButtonWidget(),
                FilterButtonWidget(texto: 'Filtro 1'),
                FilterButtonWidget(texto: 'Filtro 2'),
                FilterButtonWidget(texto: 'Filtro 3'),
              ],
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Text('Estabelecimentos próximos a você'),
            ),
          ),
          EstabelecimentoCardWidget(
            nome: 'nome',
            distancia: 13,
            movimento: 'movimento',
            imagem: 'imagem',
          ),
        ],
      ),
    );
  }
}

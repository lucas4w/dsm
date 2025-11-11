import 'package:filasapp/presentation/widgets/barrapesquisa_widget.dart';
import 'package:filasapp/presentation/widgets/estabelecimentocard_widget.dart';
import 'package:filasapp/presentation/widgets/filterbutton_widget.dart';
import 'package:filasapp/presentation/widgets/orderbutton_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Projeto'), centerTitle: true),
      body: Column(
        children: [
          SizedBox(height: 20),
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
          SizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Text('Locais próximos a você', style: GoogleFonts.alata()),
            ),
          ),
          LocalCardWidget(
            nome: 'PERN - Defensoria Pública do Estado do Rio Grande do Norte',
            distancia: 13,
            movimento: 'Alto',
            imagem: 'imagem',
          ),
        ],
      ),
    );
  }
}

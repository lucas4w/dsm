import 'package:filasapp/presentation/widgets/barrapesquisa_widget.dart';
import 'package:filasapp/presentation/widgets/localcard_widget.dart';
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
              child: Text(
                'Locais próximos a você',
                style: GoogleFonts.alata(fontSize: 15),
              ),
            ),
          ),
          SizedBox(height: 6),
          Expanded(
            child: ListView(
              children: [
                LocalCardWidget(
                  nome: 'PERN - Defensoria Pública do RN',
                  distancia: 0.7,
                  movimento: 'Baixo',
                  imagem:
                      'https://www.defensoria.rn.def.br/media/db_legado_extracoes/2017-09/Defensoria-P%C3%BAblica-do-RN.jpg',
                  tipo: 'Estabelecimento',
                ),
                LocalCardWidget(
                  nome: 'NuBus Natal',
                  distancia: 2.7,
                  movimento: 'Alto',
                  imagem:
                      'https://play-lh.googleusercontent.com/r03wjilB0-1PtSjj-PaLlVHMB73E4ALgBjgxjDJOiRO9x_ro1REbtm2015bqolfKq8g=w240-h480-rw',
                  tipo: 'Organizacao',
                ),
                LocalCardWidget(
                  nome: 'Central do Cidadão - Alecrim',
                  distancia: 4.9,
                  movimento: 'Alto',
                  imagem:
                      'https://lh3.googleusercontent.com/proxy/ZQd8pb0Mv0r-Ogbv0fmjDiTQCCtMSvJ13T0dVTqUP-9JcNnrBONV2jYJQxjoumNmyJNSso8i29K3-CCB5FGfslMOcsK1OU9DlmlisMRlnc9zuw',
                  tipo: 'Organização',
                ),
                LocalCardWidget(
                  nome: 'Cartório 2º Oficio de Notas',
                  distancia: 3.1,
                  movimento: 'Médio',
                  imagem:
                      'https://lh3.googleusercontent.com/p/AF1QipM6-K1ueeZdv67APiLvR8MnzfEgZ8FoD4MXICKU=w408-h306-k-no',
                  tipo: 'Estabelecimento',
                ),
                LocalCardWidget(
                  nome: 'Hospital Maternidade Belarmina Monte',
                  distancia: 13.1,
                  movimento: 'Alto',
                  imagem:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPBH0DfuyHMavs1hGNxg3ZNyvjpRU5XUCYYA&s',
                  tipo: 'Estabelecimento',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:filasapp/presentation/args/args.dart';
import 'package:filasapp/presentation/widgets/barrapesquisa_widget.dart';
import 'package:filasapp/presentation/widgets/localcard_widget.dart';
import 'package:filasapp/presentation/widgets/filterbutton_widget.dart';
import 'package:filasapp/presentation/widgets/orderbutton_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:filasapp/presentation/data/locais.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<LocalBase> locaisProximos = locais;

  final List<LocalBase> _locaisOriginais = locais;

  String? _filtroMovimentoAtivo;

  void alternarFiltroMovimento(String movimento) {
    setState(() {
      // Se clicou no mesmo que já estava ativo → desativa
      if (_filtroMovimentoAtivo == movimento) {
        _filtroMovimentoAtivo = null;
      } else {
        _filtroMovimentoAtivo = movimento;
      }

      // Aplica o filtro (ou mostra todos)
      if (_filtroMovimentoAtivo == null) {
        locaisProximos = _locaisOriginais; // volta ao original
      } else {
        locaisProximos = _locaisOriginais.where((local) {
          // Só filtramos Estabelecimentos que têm a propriedade movimento
          if (local is! Estabelecimento) return false;

          return local.movimento == _filtroMovimentoAtivo;
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Projeto'), centerTitle: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
                FilterButtonWidget(
                  texto: 'Movimento Baixo',
                  onPressed: () => alternarFiltroMovimento('Baixo'),
                ),
                FilterButtonWidget(
                  texto: 'Movimento Médio',
                  onPressed: () => alternarFiltroMovimento('Médio'),
                ),
                FilterButtonWidget(
                  texto: 'Movimento Alto',
                  onPressed: () => alternarFiltroMovimento('Alto'),
                ),
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
                for (LocalBase local in locaisProximos)
                  LocalCardWidget(local: local),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

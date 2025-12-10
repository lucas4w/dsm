import 'package:filasapp/presentation/widgets/infosection_widget.dart';
import 'package:filasapp/presentation/widgets/tabbarmenu_widget.dart';
import 'package:flutter/material.dart';
import 'package:filasapp/presentation/args/args.dart';

class FilasPage extends StatelessWidget {
  const FilasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as LocalArgs;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          InfoSectionWidget(
            nome: args.estabelecimento.nome,
            endereco: args.estabelecimento.endereco,
          ),
          SizedBox(height: 8),
          Expanded(
            child: TabBarMenuWidget(servicos: args.estabelecimento.servicos),
          ),
        ],
      ),
    );
  }
}

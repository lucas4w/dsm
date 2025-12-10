import 'package:filasapp/presentation/widgets/filacard_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:filasapp/presentation/args/args.dart';

class FilasWidget extends StatelessWidget {
  final List<Servico> servicos;
  const FilasWidget({super.key, required this.servicos});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Filas por serviço',
                  style: GoogleFonts.alata(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Atualizado há 5 minutos',
                  style: GoogleFonts.montserrat(
                    fontSize: 10.5,
                    color: const Color.fromARGB(255, 102, 102, 102),
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: servicos.length,
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemBuilder: (context, index) {
                final servico = servicos[index];
                return FilaCardWidget(servico: servico);
              },
            ),
          ),
        ],
      ),
    );
  }
}

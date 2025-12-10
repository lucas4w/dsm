import 'package:filasapp/core/theme/pallete.dart';
import 'package:filasapp/presentation/widgets/localcard_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:filasapp/presentation/args/args.dart';

class OrganizationPage extends StatelessWidget {
  const OrganizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as OrganizacaoArgs;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
            child: Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(0.8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: AppPallete.primary,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            width: 73,
                            height: 73,
                            color: Colors.grey.shade200,
                            child: Image.network(
                              args.organizacao.imagem,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              args.organizacao.nome,
                              style: GoogleFonts.alata(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            SizedBox(height: 3),
                            Text(
                              'Selecione uma unidade disponível',
                              style: GoogleFonts.montserrat(
                                fontSize: 11,
                                color: Color.fromARGB(255, 102, 102, 102),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Text(
                'Unidades disponíveis pra você',
                style: GoogleFonts.alata(fontSize: 15),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                for (var unidade in args.organizacao.estabelecimentos)
                  LocalCardWidget(local: unidade),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

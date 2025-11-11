import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocalCardWidget extends StatelessWidget {
  final String nome;
  final double distancia;
  final String movimento;
  final String imagem;

  const LocalCardWidget({
    super.key,
    required this.nome,
    required this.distancia,
    required this.movimento,
    required this.imagem,
  });

  Color getIconColor(String movimento) {
    const colorMap = {
      'Médio': Color.fromARGB(255, 235, 219, 8),
      'Baixo': Color.fromARGB(213, 109, 236, 5),
      'Alto': Color.fromARGB(255, 231, 67, 17),
    };
    return colorMap[movimento] ?? Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 11),
      width: double.infinity,
      child: Card(
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        child: Padding(
          padding: EdgeInsetsGeometry.only(left: 5),
          child: Row(
            children: [
              CircleAvatar(
                radius: 37,
                backgroundImage: NetworkImage(
                  'https://www.defensoria.rn.def.br/media/db_legado_extracoes/2017-09/Defensoria-P%C3%BAblica-do-RN.jpg',
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 200,
                    padding: EdgeInsets.only(left: 6),
                    child: Text(
                      nome,
                      style: GoogleFonts.alata(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    width: 200,
                    padding: EdgeInsets.only(left: 6),
                    child: Row(
                      children: [
                        Text(
                          "$distancia km",
                          style: GoogleFonts.montserrat(
                            fontSize: 11,
                            color: const Color.fromARGB(255, 102, 102, 102),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(
                            Icons.circle,
                            size: 4,
                            color: const Color.fromARGB(255, 102, 102, 102),
                          ),
                        ),
                        Text(
                          "Movimento - $movimento",
                          style: GoogleFonts.montserrat(
                            fontSize: 11,
                            color: const Color.fromARGB(255, 102, 102, 102),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Icon(
                            Icons.circle,
                            size: 6,
                            color: getIconColor(movimento),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 83,
                height: 33,
                padding: EdgeInsets.only(left: 7),
                child: TextButton(
                  onPressed: null,
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 73, 152, 180),
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(9)),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  ),
                  child: Text(
                    'Detalhes',
                    style: GoogleFonts.alata(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

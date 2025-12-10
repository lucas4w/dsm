import 'package:filasapp/core/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:filasapp/presentation/args/args.dart';

class FilaCardWidget extends StatelessWidget {
  final Servico servico;
  const FilaCardWidget({super.key, required this.servico});

  Color getBorderColor(int fluxo) {
    if (fluxo <= 7) {
      return Colors.green;
    } else if (fluxo <= 15) {
      return Colors.yellow;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: getBorderColor(servico.fluxo), width: 5),
        ),
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: AppPallete.cardColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  servico.nome,
                  style: GoogleFonts.alata(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(187, 209, 231, 243),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.timer_outlined,
                        size: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 131, 131, 131),
                      ),
                      Text(
                        ' FLUXO: ${servico.fluxo.toString()} MIN',
                        style: GoogleFonts.montserrat(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 131, 131, 131),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  'Tempo estimado',
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: servico.tempoEspera.toString(),
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: getBorderColor(servico.fluxo),
                        ),
                      ),
                      TextSpan(
                        text: ' minutos',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    // Icon(
                    //   Icons.warning_amber_rounded,
                    //   size: 11,
                    //   color: Colors.red,
                    // ),
                    // Text(
                    //   " Alta demanda",
                    //   style: GoogleFonts.montserrat(
                    //     fontSize: 10,
                    //     color: Colors.red,
                    //   ),
                    // ),
                  ],
                ),
                Divider(
                  color: const Color.fromARGB(45, 168, 168, 168),
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.people_alt_outlined,
                          size: 20,
                          color: const Color.fromARGB(255, 131, 131, 131),
                        ),
                        SizedBox(width: 6),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CONVENCIONCAL',
                              style: GoogleFonts.alata(
                                fontSize: 10,
                                color: const Color.fromARGB(255, 138, 138, 138),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        '${servico.convencionalQtd.toString()} ',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'pessoas',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.accessible_sharp, color: Colors.grey),
                        SizedBox(width: 6),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PRIORITÁRIA',
                              style: GoogleFonts.alata(
                                fontSize: 10,
                                color: const Color.fromARGB(255, 138, 138, 138),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        '${servico.prioritarioQtd.toString()} ',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'pessoas',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

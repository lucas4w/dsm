import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoSectionWidget extends StatelessWidget {
  final String nome;
  final String endereco;

  const InfoSectionWidget({
    super.key,
    required this.nome,
    required this.endereco,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
      child: Center(
        child: Column(
          children: [
            Text(
              nome,
              style: GoogleFonts.alata(
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.location_on_outlined, size: 16),
                SizedBox(width: 4),
                Text(endereco, style: GoogleFonts.montserrat(fontSize: 11)),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.access_time, size: 16),
                SizedBox(width: 4),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Aberto: ',
                            style: GoogleFonts.montserrat(fontSize: 11),
                          ),
                          TextSpan(
                            text: '08:00 - 18:00 ',
                            style: GoogleFonts.montserrat(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 206, 241, 207),
                        borderRadius: BorderRadius.circular(8),
                      ),

                      child: Text(
                        'Aberto',
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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

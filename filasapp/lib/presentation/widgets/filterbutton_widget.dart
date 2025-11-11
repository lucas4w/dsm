import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterButtonWidget extends StatelessWidget {
  final String texto;
  const FilterButtonWidget({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ActionChip(
        label: Text(texto, style: GoogleFonts.montserrat()),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        labelStyle: GoogleFonts.montserrat(fontSize: 15),
      ),
    );
  }
}

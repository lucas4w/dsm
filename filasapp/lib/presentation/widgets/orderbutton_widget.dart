import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderButtonWidget extends StatelessWidget {
  const OrderButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ActionChip(
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Ordenar', style: GoogleFonts.montserrat()),
            SizedBox(width: 5), // espaçamento entre texto e ícone
            Icon(Icons.keyboard_arrow_down, size: 18),
          ],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        labelStyle: GoogleFonts.montserrat(fontSize: 15),
      ),
    );
  }
}

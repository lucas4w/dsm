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
            Text('Ordenar', style: GoogleFonts.alata(fontSize: 12)),
            SizedBox(width: 5),
            Icon(Icons.keyboard_arrow_down, size: 15),
          ],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

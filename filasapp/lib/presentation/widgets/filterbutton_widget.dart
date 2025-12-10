import 'package:filasapp/core/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String texto;
  final bool selecionado;

  const FilterButtonWidget({
    super.key,
    required this.texto,
    this.onPressed,
    this.selecionado = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ActionChip(
        onPressed: onPressed ?? () {},
        label: Text(
          texto,
          style: GoogleFonts.alata(
            fontSize: 12,
            color: selecionado ? Colors.white : null,
          ),
        ),
        backgroundColor: selecionado ? AppPallete.primary : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: selecionado
                ? Theme.of(context).primaryColor
                : Colors.grey.shade400,
          ),
        ),
      ),
    );
  }
}

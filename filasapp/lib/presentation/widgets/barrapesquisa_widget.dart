import 'package:filasapp/core/theme/pallete.dart';
import 'package:flutter/material.dart';

final border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: const BorderSide(color: Colors.transparent, width: 0),
);

class BarraPesquisaWidget extends StatelessWidget {
  const BarraPesquisaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 355,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: AppPallete.primary),
            filled: true,
            fillColor: const Color.fromARGB(255, 230, 230, 230),
            enabledBorder: border,
            focusedBorder: border,
          ),
        ),
      ),
    );
  }
}

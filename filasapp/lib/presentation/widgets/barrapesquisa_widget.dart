import 'package:flutter/material.dart';

final border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: const BorderSide(
    color: Color.fromARGB(255, 242, 242, 242),
    width: 0,
  ),
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
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            filled: true,
            fillColor: const Color.fromARGB(255, 242, 242, 242),
            enabledBorder: border,
            focusedBorder: border,
          ),
        ),
      ),
    );
  }
}

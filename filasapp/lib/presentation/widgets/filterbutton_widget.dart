import 'package:flutter/material.dart';

class FilterButtonWidget extends StatelessWidget {
  final String texto;
  const FilterButtonWidget({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: ActionChip(label: Text(texto)),
    );
  }
}

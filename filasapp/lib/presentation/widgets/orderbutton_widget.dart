import 'package:flutter/material.dart';

class OrderButtonWidget extends StatelessWidget {
  const OrderButtonWidget({super.key});

  final List<String> _opcoes = const [
    'Opção 1',
    'Opção 2',
    'Opção 3',
    'Opção 4',
  ];

  @override
  Widget build(BuildContext context) {
    String? selectedOption;

    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: DropdownButton<String>(
        value: selectedOption,
        hint: Text('Ordenar'),
        onChanged: (String? newValue) {
          selectedOption = newValue;
        },
        items: _opcoes.map<DropdownMenuItem<String>>((String opcao) {
          return DropdownMenuItem<String>(value: opcao, child: Text(opcao));
        }).toList(),
        underline: Container(),
        icon: Icon(Icons.keyboard_arrow_down),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}

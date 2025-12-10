import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class EstatisticasWidget extends StatefulWidget {
  const EstatisticasWidget({super.key});

  @override
  State<EstatisticasWidget> createState() => _EstatisticasWidgetState();
}

class _EstatisticasWidgetState extends State<EstatisticasWidget> {
  // Dias da semana (pode adaptar)
  final List<String> diasDaSemana = [
    'Segunda',
    'Terça',
    'Quarta',
    'Quinta',
    'Sexta',
    'Sábado',
    'Domingo',
  ];
  String diaSelecionado = 'Segunda'; // valor inicial

  // Dados mockados: Mapa com dia → lista de movimentos por hora (0-23)
  // Substitua por seus dados reais (de API, Firebase, etc.)
  final Map<String, List<double>> dadosMovimento = {
    'Segunda': [
      10,
      15,
      20,
      25,
      30,
      35,
      40,
      45,
      50,
      55,
      60,
      65,
      70,
      75,
      80,
      85,
      90,
      95,
      100,
      95,
      90,
      85,
      80,
      75,
    ],
    'Terça': [
      5,
      10,
      15,
      20,
      25,
      30,
      35,
      40,
      45,
      50,
      55,
      60,
      65,
      70,
      75,
      80,
      85,
      90,
      95,
      100,
      95,
      90,
      85,
      80,
    ],
    // ... adicione os outros dias com listas de 24 valores
    'Quarta': List.generate(24, (index) => index * 3.0), // exemplo gerado
    'Quinta': List.generate(24, (index) => index * 4.0),
    'Sexta': List.generate(24, (index) => index * 5.0),
    'Sábado': List.generate(24, (index) => index * 2.0),
    'Domingo': List.generate(24, (index) => index * 1.0),
  };

  @override
  Widget build(BuildContext context) {
    // Pega os dados do dia selecionado (ou zeros se não existir)
    final List<double> movimentoDoDia =
        dadosMovimento[diaSelecionado] ?? List.filled(24, 0.0);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Dropdown pra escolher o dia
          DropdownButton<String>(
            value: diaSelecionado,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(height: 2, color: Colors.deepPurpleAccent),
            onChanged: (String? novoDia) {
              if (novoDia != null) {
                setState(() {
                  diaSelecionado = novoDia; // atualiza e rebuilda o gráfico
                });
              }
            },
            items: diasDaSemana.map<DropdownMenuItem<String>>((String dia) {
              return DropdownMenuItem<String>(value: dia, child: Text(dia));
            }).toList(),
          ),

          const SizedBox(height: 20), // espaço
          // O gráfico em si (dentro de um Expanded pra ocupar espaço)
          Expanded(
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 100, // ajuste pro máximo dos seus dados
                barTouchData: BarTouchData(
                  enabled: true, // habilita toque pra ver valores
                  touchTooltipData: BarTouchTooltipData(
                    getTooltipColor: (group) => Colors.transparent,
                    tooltipPadding: const EdgeInsets.all(8),
                    tooltipMargin: 8,
                    getTooltipItem: (group, groupIndex, rod, rodIndex) {
                      return BarTooltipItem(
                        '${group.x.toInt()}:00\n ${rod.toY.toInt()}', // ex: "12:00\n45"
                        const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 32,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          '${value.toInt()}:00',
                        ); // labels como "0:00", "1:00"...
                      },
                    ),
                  ),
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: true, reservedSize: 40),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                borderData: FlBorderData(show: false),
                barGroups: List.generate(24, (index) {
                  return BarChartGroupData(
                    x: index, // hora 0-23
                    barRods: [
                      BarChartRodData(
                        toY: movimentoDoDia[index], // valor do movimento
                        color: Colors.blueAccent, // cor das barras
                        width: 8, // largura
                        borderRadius: BorderRadius.circular(4), // arredondado
                      ),
                    ],
                  );
                }),
                gridData: const FlGridData(show: true),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

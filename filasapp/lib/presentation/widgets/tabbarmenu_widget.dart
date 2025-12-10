import 'package:filasapp/core/theme/pallete.dart';
import 'package:filasapp/presentation/widgets/estatisticas_widget.dart';
import 'package:filasapp/presentation/widgets/filas_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:filasapp/presentation/args/args.dart';

class TabBarMenuWidget extends StatefulWidget {
  final List<Servico> servicos;
  const TabBarMenuWidget({super.key, required this.servicos});

  @override
  State<TabBarMenuWidget> createState() => _TabBarMenuWidgetState();
}

class _TabBarMenuWidgetState extends State<TabBarMenuWidget>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  final List<Servico> servicos = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          dividerColor: const Color.fromARGB(207, 194, 194, 194),
          dividerHeight: 1.3,
          labelColor: AppPallete.primary,
          automaticIndicatorColorAdjustment: true,
          indicatorColor: AppPallete.primary,
          enableFeedback: true,
          indicatorSize: TabBarIndicatorSize.tab,
          unselectedLabelColor: const Color.fromARGB(207, 145, 145, 145),
          splashFactory: NoSplash.splashFactory,
          overlayColor: const WidgetStatePropertyAll(Colors.transparent),
          labelStyle: GoogleFonts.alata(fontSize: 14),
          tabs: [
            Tab(text: "Filas"),
            Tab(text: "Estatísticas"),
          ],
        ),

        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              FilasWidget(servicos: widget.servicos),
              EstatisticasWidget(),
            ],
          ),
        ),
      ],
    );
  }
}

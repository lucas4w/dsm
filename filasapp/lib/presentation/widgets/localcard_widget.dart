import 'package:filasapp/core/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:filasapp/presentation/args/args.dart';

class LocalCardWidget extends StatelessWidget {
  final dynamic local;

  const LocalCardWidget({super.key, required this.local});

  Color getIconColor(String movimento) {
    const colorMap = {
      'Médio': Color.fromARGB(255, 255, 230, 0),
      'Baixo': Color.fromARGB(213, 109, 236, 5),
      'Alto': Color.fromARGB(255, 231, 67, 17),
    };
    return colorMap[movimento] ?? Colors.black;
  }

  Widget _buildCircularAvatar(String imageUrl) {
    return Container(
      padding: const EdgeInsets.all(0.8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppPallete.primary,
      ),
      child: CircleAvatar(
        radius: 37,
        backgroundColor: Colors.grey.shade200,
        backgroundImage: NetworkImage(imageUrl),
      ),
    );
  }

  Widget _buildSquareAvatar(String imageUrl) {
    return Container(
      padding: const EdgeInsets.all(0.8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: AppPallete.primary,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 73,
          height: 73,
          color: Colors.grey.shade200,
          child: Image.network(imageUrl, fit: BoxFit.cover),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (local is Estabelecimento) {
          Navigator.pushNamed(
            context,
            "/filas",
            arguments: LocalArgs(estabelecimento: local),
          );
        } else {
          Navigator.pushNamed(
            context,
            "/organization",
            arguments: OrganizacaoArgs(organizacao: local),
          );
        }
      },
      child: Container(
        padding: EdgeInsets.only(top: 6),
        width: double.infinity,
        child: Card(
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          child: Padding(
            padding: EdgeInsetsGeometry.only(left: 5),
            child: Row(
              children: [
                local is Estabelecimento
                    ? _buildCircularAvatar(local.imagem)
                    : _buildSquareAvatar(local.imagem),
                Column(
                  children: [
                    Container(
                      width: 200,
                      padding: EdgeInsets.only(left: 6),
                      child: Text(
                        local is Estabelecimento ? local.nome : local.nome,
                        style: GoogleFonts.alata(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      width: 200,
                      padding: EdgeInsets.only(left: 6),
                      child: Row(
                        children: [
                          if (local is Estabelecimento) ...[
                            Text(
                              "${local.distancia} km",
                              style: GoogleFonts.montserrat(
                                fontSize: 11,
                                color: const Color.fromARGB(255, 102, 102, 102),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              child: Icon(
                                Icons.circle,
                                size: 4,
                                color: const Color.fromARGB(255, 102, 102, 102),
                              ),
                            ),
                            Text(
                              "Movimento - ${local.movimento}",
                              style: GoogleFonts.montserrat(
                                fontSize: 11,
                                color: const Color.fromARGB(255, 102, 102, 102),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                                color: getIconColor(local.movimento),
                              ),
                            ),
                          ] else ...[
                            Text(
                              "${local.qtdUnidades} unidades disponíveis",
                              style: GoogleFonts.montserrat(
                                fontSize: 11,
                                color: const Color.fromARGB(255, 102, 102, 102),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 83,
                  height: 33,
                  padding: EdgeInsets.only(left: 7),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: AppPallete.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(9),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    ),
                    child: Text(
                      'Detalhes',
                      style: GoogleFonts.alata(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

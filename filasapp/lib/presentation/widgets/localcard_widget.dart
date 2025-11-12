import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocalCardWidget extends StatelessWidget {
  final String nome;
  final double distancia;
  final String movimento;
  final String imagem;
  final String tipo;

  const LocalCardWidget({
    super.key,
    required this.nome,
    required this.distancia,
    required this.movimento,
    required this.imagem,
    required this.tipo,
  });

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
        color: const Color.fromARGB(255, 73, 152, 180),
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
        color: const Color.fromARGB(255, 73, 152, 180),
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
    return Container(
      padding: EdgeInsets.only(top: 6),
      width: double.infinity,
      child: Card(
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        child: Padding(
          padding: EdgeInsetsGeometry.only(left: 5),
          child: Row(
            children: [
              tipo == 'Estabelecimento'
                  ? _buildCircularAvatar(imagem)
                  : _buildSquareAvatar(imagem),
              Column(
                children: [
                  Container(
                    width: 200,
                    padding: EdgeInsets.only(left: 6),
                    child: Text(
                      nome,
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
                        Text(
                          "$distancia km",
                          style: GoogleFonts.montserrat(
                            fontSize: 11,
                            color: const Color.fromARGB(255, 102, 102, 102),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(
                            Icons.circle,
                            size: 4,
                            color: const Color.fromARGB(255, 102, 102, 102),
                          ),
                        ),
                        Text(
                          "Movimento - $movimento",
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
                            color: getIconColor(movimento),
                          ),
                        ),
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
                  onPressed: null,
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 73, 152, 180),
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(9)),
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
    );
  }
}

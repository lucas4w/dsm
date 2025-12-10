import 'package:filasapp/presentation/args/args.dart';
import 'package:filasapp/presentation/data/servicos.dart';

List<LocalBase> locais = [
  Estabelecimento(
    nome: 'PERN - Defensoria Pública do RN',
    imagem:
        'https://www.defensoria.rn.def.br/media/db_legado_extracoes/2017-09/Defensoria-P%C3%BAblica-do-RN.jpg',
    distancia: 0.7,
    movimento: 'Baixo',
    tipo: 'Estabelecimento',
    endereco: 'Av. Senador Salgado Filho, 1234',
    lastUpdate: 5,
    servicos: servicosDefensoria,
  ),
  Organizacao(
    nome: 'Nubus',
    imagem:
        'https://play-lh.googleusercontent.com/r03wjilB0-1PtSjj-PaLlVHMB73E4ALgBjgxjDJOiRO9x_ro1REbtm2015bqolfKq8g=w240-h480-rw',
    qtdUnidades: 2,
    estabelecimentos: [
      Estabelecimento(
        nome: 'Nubus - Zona Norte',
        imagem:
            'https://play-lh.googleusercontent.com/r03wjilB0-1PtSjj-PaLlVHMB73E4ALgBjgxjDJOiRO9x_ro1REbtm2015bqolfKq8g=w240-h480-rw',
        distancia: 2.5,
        movimento: 'Médio',
        tipo: 'Unidade',
        endereco: 'Rua das Palmeiras, 456 - Tirol',
        lastUpdate: 8,
        servicos: servicosNubusZN,
      ),
      Estabelecimento(
        nome: 'Nubus - Zona Sul',
        imagem:
            'https://play-lh.googleusercontent.com/r03wjilB0-1PtSjj-PaLlVHMB73E4ALgBjgxjDJOiRO9x_ro1REbtm2015bqolfKq8g=w240-h480-rw',
        distancia: 9.3,
        movimento: 'Alto',
        tipo: 'Unidade',
        endereco: 'Av. Engenheiro Roberto Freire, 789 - Ponta Negra',
        lastUpdate: 12,
        servicos: servicosNubusZS,
      ),
    ],
  ),

  Organizacao(
    nome: 'Central do cidadão',
    qtdUnidades: 2,
    imagem:
        'https://lh3.googleusercontent.com/proxy/ZQd8pb0Mv0r-Ogbv0fmjDiTQCCtMSvJ13T0dVTqUP-9JcNnrBONV2jYJQxjoumNmyJNSso8i29K3-CCB5FGfslMOcsK1OU9DlmlisMRlnc9zuw',
    estabelecimentos: [
      Estabelecimento(
        nome: 'Central do Cidadão - Alecrim',
        imagem:
            'https://lh3.googleusercontent.com/proxy/ZQd8pb0Mv0r-Ogbv0fmjDiTQCCtMSvJ13T0dVTqUP-9JcNnrBONV2jYJQxjoumNmyJNSso8i29K3-CCB5FGfslMOcsK1OU9DlmlisMRlnc9zuw',
        distancia: 3.0,
        movimento: 'Médio',
        tipo: 'Unidade',
        endereco: 'Av. Alexandrino de Alencar, 1000 - Alecrim',
        lastUpdate: 6,
        servicos: servicosCentralAlecrim,
      ),
      Estabelecimento(
        nome: 'Central do Cidadão - Cidade Alta',
        imagem:
            'https://lh3.googleusercontent.com/proxy/ZQd8pb0Mv0r-Ogbv0fmjDiTQCCtMSvJ13T0dVTqUP-9JcNnrBONV2jYJQxjoumNmyJNSso8i29K3-CCB5FGfslMOcsK1OU9DlmlisMRlnc9zuw',
        distancia: 4.5,
        movimento: 'Baixo',
        tipo: 'Unidade',
        endereco: 'Rua Chile, 200 - Cidade Alta',
        lastUpdate: 4,
        servicos: servicosCentralCidadeAlta,
      ),
    ],
  ),

  Estabelecimento(
    nome: 'Cartório 2º Oficio de Notas',
    imagem:
        'https://lh3.googleusercontent.com/p/AF1QipM6-K1ueeZdv67APiLvR8MnzfEgZ8FoD4MXICKU=w408-h306-k-no',
    distancia: 3.1,
    movimento: 'Médio',
    tipo: 'Estabelecimento',
    endereco: 'Praça das Flores, 89 - Alecrim',
    lastUpdate: 10,
    servicos: servicosCartorio,
  ),
  Estabelecimento(
    nome: 'Hospital Maternidade Belarmina Monte',
    imagem:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPBH0DfuyHMavs1hGNxg3ZNyvjpRU5XUCYYA&s',
    distancia: 13.1,
    movimento: 'Alto',
    tipo: 'Estabelecimento',
    endereco: 'Av. das Nações, 456 - Lagoa Nova',
    lastUpdate: 7,
    servicos: servicosHospital,
  ),
];

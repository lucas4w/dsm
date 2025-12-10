import 'package:filasapp/presentation/args/args.dart';

List<Servico> servicosDefensoria = [
  Servico(
    nome: 'Atendimento Geral',
    tempoEspera: 30,
    fluxo: 5,
    convencionalQtd: 10,
    prioritarioQtd: 2,
  ),
  Servico(
    nome: 'Atendimento Jurídico',
    tempoEspera: 45,
    fluxo: 15,
    convencionalQtd: 15,
    prioritarioQtd: 5,
  ),
];

List<Servico> servicosNubusZN = [
  Servico(
    nome: 'Emissão de Bilhete Único',
    tempoEspera: 20,
    fluxo: 3,
    convencionalQtd: 12,
    prioritarioQtd: 1,
  ),
  Servico(
    nome: 'Recarga de Cartão',
    tempoEspera: 10,
    fluxo: 10,
    convencionalQtd: 20,
    prioritarioQtd: 0,
  ),
  Servico(
    nome: 'Atendimento ao Cliente',
    tempoEspera: 25,
    fluxo: 7,
    convencionalQtd: 15,
    prioritarioQtd: 3,
  ),
];

List<Servico> servicosNubusZS = [
  Servico(
    nome: 'Emissão de Bilhete Único',
    tempoEspera: 15,
    fluxo: 9,
    convencionalQtd: 10,
    prioritarioQtd: 2,
  ),
  Servico(
    nome: 'Recarga de Cartão',
    tempoEspera: 5,
    fluxo: 17,
    convencionalQtd: 25,
    prioritarioQtd: 0,
  ),
  Servico(
    nome: 'Atendimento ao Cliente',
    tempoEspera: 30,
    fluxo: 6,
    convencionalQtd: 8,
    prioritarioQtd: 1,
  ),
];

List<Servico> servicosCartorio = [
  Servico(
    nome: 'Reconhecimento de Firma',
    tempoEspera: 25,
    fluxo: 6,
    convencionalQtd: 8,
    prioritarioQtd: 2,
  ),
  Servico(
    nome: 'Autenticação de Documentos',
    tempoEspera: 15,
    fluxo: 23,
    convencionalQtd: 10,
    prioritarioQtd: 1,
  ),
  Servico(
    nome: 'Registro de Imóveis',
    tempoEspera: 40,
    fluxo: 4,
    convencionalQtd: 5,
    prioritarioQtd: 0,
  ),
  Servico(
    nome: 'Certidões',
    tempoEspera: 30,
    fluxo: 5,
    convencionalQtd: 7,
    prioritarioQtd: 1,
  ),
];

List<Servico> servicosCentralAlecrim = [
  Servico(
    nome: 'Emissão de RG',
    tempoEspera: 50,
    fluxo: 14,
    convencionalQtd: 20,
    prioritarioQtd: 5,
  ),
  Servico(
    nome: 'Emissão de CPF',
    tempoEspera: 30,
    fluxo: 12,
    convencionalQtd: 15,
    prioritarioQtd: 3,
  ),
  Servico(
    nome: 'Atendimento ao Cidadão',
    tempoEspera: 40,
    fluxo: 10,
    convencionalQtd: 10,
    prioritarioQtd: 2,
  ),
];

List<Servico> servicosCentralCidadeAlta = [
  Servico(
    nome: 'Emissão de RG',
    tempoEspera: 45,
    fluxo: 20,
    convencionalQtd: 18,
    prioritarioQtd: 4,
  ),
  Servico(
    nome: 'Emissão de CPF',
    tempoEspera: 25,
    fluxo: 17,
    convencionalQtd: 12,
    prioritarioQtd: 2,
  ),
  Servico(
    nome: 'Atendimento ao Cidadão',
    tempoEspera: 35,
    fluxo: 10,
    convencionalQtd: 9,
    prioritarioQtd: 1,
  ),
];

List<Servico> servicosHospital = [
  Servico(
    nome: 'Consultas Ambulatoriais',
    tempoEspera: 60,
    fluxo: 30,
    convencionalQtd: 25,
    prioritarioQtd: 5,
  ),
  Servico(
    nome: 'Exames Laboratoriais',
    tempoEspera: 45,
    fluxo: 23,
    convencionalQtd: 20,
    prioritarioQtd: 3,
  ),
  Servico(
    nome: 'Atendimento de Emergência',
    tempoEspera: 15,
    fluxo: 40,
    convencionalQtd: 10,
    prioritarioQtd: 2,
  ),
  Servico(
    nome: 'Atendimento',
    tempoEspera: 120,
    fluxo: 10,
    convencionalQtd: 5,
    prioritarioQtd: 1,
  ),
  Servico(
    nome: 'Pediatria',
    tempoEspera: 90,
    fluxo: 20,
    convencionalQtd: 8,
    prioritarioQtd: 2,
  ),
];

class Servico {
  final String nome;
  final int tempoEspera;
  final int convencionalQtd;
  final int prioritarioQtd;
  final int fluxo;

  Servico({
    required this.nome,
    required this.tempoEspera,
    required this.fluxo,
    required this.convencionalQtd,
    required this.prioritarioQtd,
  });
}

class Organizacao extends LocalBase {
  final int qtdUnidades;
  @override
  final String nome;
  @override
  final String imagem;
  final List<Estabelecimento> estabelecimentos;

  Organizacao({
    required this.qtdUnidades,
    required this.nome,
    required this.estabelecimentos,
    required this.imagem,
  });
}

class Estabelecimento implements LocalBase {
  @override
  final String nome;
  @override
  final String imagem;
  final double distancia;
  final String movimento;
  final String tipo;
  final String endereco;
  final int lastUpdate;
  final List<Servico> servicos;

  Estabelecimento({
    required this.nome,
    required this.imagem,
    required this.distancia,
    required this.movimento,
    required this.tipo,
    required this.endereco,
    required this.lastUpdate,
    required this.servicos,
  });
}

class LocalArgs {
  final Estabelecimento estabelecimento;

  LocalArgs({required this.estabelecimento});
}

class OrganizacaoArgs {
  final Organizacao organizacao;

  OrganizacaoArgs({required this.organizacao});
}

abstract class LocalBase {
  String get nome;
  String get imagem;
}

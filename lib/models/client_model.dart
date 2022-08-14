class ClienteModel {
  Cliente? cliente;

  ClienteModel({this.cliente});

  ClienteModel.fromJson(Map<String, dynamic> json) {
    cliente =
        json['cliente'] != null ? Cliente.fromJson(json['cliente']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (cliente != null) {
      data['cliente'] = cliente!.toJson();
    }
    return data;
  }
}

class Cliente {
  int? id;
  String? codigo;
  String? razaoSocial;
  String? nomeFantasia;
  String? cnpj;
  String? ramoAtividade;
  String? endereco;
  String? status;
  List<Contatos>? contatos;

  Cliente({
    this.id,
    this.codigo,
    this.razaoSocial,
    this.nomeFantasia,
    this.cnpj,
    this.ramoAtividade,
    this.endereco,
    this.status,
    this.contatos,
  });

  Cliente.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    codigo = json['codigo'];
    razaoSocial = json['razao_social'];
    nomeFantasia = json['nomeFantasia'];
    cnpj = json['cnpj'];
    ramoAtividade = json['ramo_atividade'];
    endereco = json['endereco'];
    status = json['status'];
    if (json['contatos'] != null) {
      contatos = <Contatos>[];
      json['contatos'].forEach((v) {
        contatos!.add(Contatos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['codigo'] = codigo;
    data['razao_social'] = razaoSocial;
    data['nomeFantasia'] = nomeFantasia;
    data['cnpj'] = cnpj;
    data['ramo_atividade'] = ramoAtividade;
    data['endereco'] = endereco;
    data['status'] = status;
    if (contatos != null) {
      data['contatos'] = contatos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Contatos {
  String? nome;
  String? telefone;
  String? celular;
  String? conjuge;
  String? tipo;
  String? time;
  String? eMail;
  String? dataNascimento;
  Null? dataNascimentoConjuge;

  Contatos(
      {this.nome,
      this.telefone,
      this.celular,
      this.conjuge,
      this.tipo,
      this.time,
      this.eMail,
      this.dataNascimento,
      this.dataNascimentoConjuge});

  Contatos.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    telefone = json['telefone'];
    celular = json['celular'];
    conjuge = json['conjuge'];
    tipo = json['tipo'];
    time = json['time'];
    eMail = json['e_mail'];
    dataNascimento = json['data_nascimento'];
    dataNascimentoConjuge = json['dataNascimentoConjuge'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nome'] = nome;
    data['telefone'] = telefone;
    data['celular'] = celular;
    data['conjuge'] = conjuge;
    data['tipo'] = tipo;
    data['time'] = time;
    data['e_mail'] = eMail;
    data['data_nascimento'] = dataNascimento;
    data['dataNascimentoConjuge'] = dataNascimentoConjuge;
    return data;
  }
}

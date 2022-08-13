class ClienteModel {
  Cliente? cliente;

  ClienteModel({this.cliente});

  ClienteModel.fromJson(Map<String, dynamic> json) {
    cliente =
        json['cliente'] != null ? new Cliente.fromJson(json['cliente']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cliente != null) {
      data['cliente'] = this.cliente!.toJson();
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

  Cliente(
      {this.id,
      this.codigo,
      this.razaoSocial,
      this.nomeFantasia,
      this.cnpj,
      this.ramoAtividade,
      this.endereco,
      this.status,
      this.contatos});

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
        contatos!.add(new Contatos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['codigo'] = this.codigo;
    data['razao_social'] = this.razaoSocial;
    data['nomeFantasia'] = this.nomeFantasia;
    data['cnpj'] = this.cnpj;
    data['ramo_atividade'] = this.ramoAtividade;
    data['endereco'] = this.endereco;
    data['status'] = this.status;
    if (this.contatos != null) {
      data['contatos'] = this.contatos!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['telefone'] = this.telefone;
    data['celular'] = this.celular;
    data['conjuge'] = this.conjuge;
    data['tipo'] = this.tipo;
    data['time'] = this.time;
    data['e_mail'] = this.eMail;
    data['data_nascimento'] = this.dataNascimento;
    data['dataNascimentoConjuge'] = this.dataNascimentoConjuge;
    return data;
  }
}

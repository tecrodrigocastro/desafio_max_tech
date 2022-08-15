class OrderedModel {
  List<Pedidos>? pedidos;

  OrderedModel({this.pedidos});

  OrderedModel.fromJson(Map<String, dynamic> json) {
    if (json['pedidos'] != null) {
      pedidos = <Pedidos>[];
      json['pedidos'].forEach((v) {
        pedidos!.add(new Pedidos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pedidos != null) {
      data['pedidos'] = this.pedidos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pedidos {
  int? numeroPedRca;
  String? numeroPedErp;
  String? codigoCliente;
  String? nOMECLIENTE;
  String? data;
  String? status;
  String? critica;
  String? tipo;
  List<dynamic>? legendas;

  Pedidos(
      {this.numeroPedRca,
      this.numeroPedErp,
      this.codigoCliente,
      this.nOMECLIENTE,
      this.data,
      this.status,
      this.critica,
      this.tipo,
      this.legendas});

  Pedidos.fromJson(Map<String, dynamic> json) {
    numeroPedRca = json['numero_ped_Rca'];
    numeroPedErp = json['numero_ped_erp'];
    codigoCliente = json['codigoCliente'];
    nOMECLIENTE = json['NOMECLIENTE'];
    data = json['data'];
    status = json['status'];
    critica = json['critica'];
    tipo = json['tipo'];
    legendas = json['legendas'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['numero_ped_Rca'] = this.numeroPedRca;
    data['numero_ped_erp'] = this.numeroPedErp;
    data['codigoCliente'] = this.codigoCliente;
    data['NOMECLIENTE'] = this.nOMECLIENTE;
    data['data'] = this.data;
    data['status'] = this.status;
    data['critica'] = this.critica;
    data['tipo'] = this.tipo;
    data['legendas'] = this.legendas;
    return data;
  }
}

class AboutUsModel {
  String? message;
  List<Data>? data;

  AboutUsModel({this.message, this.data});

  AboutUsModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? aboutus;
  int? iV;

  Data({this.sId, this.aboutus, this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    aboutus = json['aboutus'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['aboutus'] = this.aboutus;
    data['__v'] = this.iV;
    return data;
  }
}

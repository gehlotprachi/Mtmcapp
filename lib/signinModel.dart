class signinModel {
  String? message;
  Response? response;
  String? token;

  signinModel({this.message, this.response, this.token});

  signinModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    response = json['response'] != null
        ? new Response.fromJson(json['response'])
        : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.response != null) {
      data['response'] = this.response!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class Response {
  String? sId;
  String? email;
  String? password;
  String? username;
  int? iV;

  Response({this.sId, this.email, this.password, this.username, this.iV});

  Response.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    email = json['email'];
    password = json['password'];
    username = json['username'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['email'] = this.email;
    data['password'] = this.password;
    data['username'] = this.username;
    data['__v'] = this.iV;
    return data;
  }
}

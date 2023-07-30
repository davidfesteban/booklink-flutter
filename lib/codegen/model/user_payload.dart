part of swagger.api;

class UserPayload {
  
  String? name = null;

  String? email = null;

  String? password = null;

  String? phone = null;

  BusinessPayload? business = null;

  List<AppointmentPayload> appointments = [];

  UserPayload();

  @override
  String toString() {
    return 'UserPayload[name=$name, email=$email, password=$password, phone=$phone, business=$business, appointments=$appointments, ]';
  }

  UserPayload.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    business = new BusinessPayload.fromJson(json['business']);
    appointments = AppointmentPayload.listFromJson(json['appointments']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
      'business': business,
      'appointments': appointments
     };
  }

  static List<UserPayload> listFromJson(List<dynamic> json) {
    return json == null ? List<UserPayload>.empty(growable: true) : json.map((value) => new UserPayload.fromJson(value)).toList();
  }

  static Map<String, UserPayload> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserPayload>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserPayload.fromJson(value));
    }
    return map;
  }
}

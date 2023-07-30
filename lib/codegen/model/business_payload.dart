part of swagger.api;

class BusinessPayload {
  
  String? subdomain = null;

  String? name = null;

  String? address = null;

  String? email = null;

  String? phone = null;

  Map<String, int> slotDurationByServices = {};

  Map<String, WorkingHours> workingHoursByDay = {};

  List<String> slotOwners = [];

  Map<String, WorkingHours> specialWorkingDays = {};

  List<AppointmentPayload> appointments = [];

  BusinessPayload();

  @override
  String toString() {
    return 'BusinessPayload[subdomain=$subdomain, name=$name, address=$address, email=$email, phone=$phone, slotDurationByServices=$slotDurationByServices, workingHoursByDay=$workingHoursByDay, slotOwners=$slotOwners, specialWorkingDays=$specialWorkingDays, appointments=$appointments, ]';
  }

  BusinessPayload.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    subdomain = json['subdomain'];
    name = json['name'];
    address = json['address'];
    email = json['email'];
    phone = json['phone'];
    slotDurationByServices = json['slotDurationByServices'];
    workingHoursByDay = WorkingHours.mapFromJson(json['workingHoursByDay']);
    slotOwners = (json['slotOwners'] as List).map((item) => item as String).toList();
    specialWorkingDays = WorkingHours.mapFromJson(json['specialWorkingDays']);
    appointments = AppointmentPayload.listFromJson(json['appointments']);
  }

  Map<String, dynamic> toJson() {
    return {
      'subdomain': subdomain,
      'name': name,
      'address': address,
      'email': email,
      'phone': phone,
      'slotDurationByServices': slotDurationByServices,
      'workingHoursByDay': workingHoursByDay,
      'slotOwners': slotOwners,
      'specialWorkingDays': specialWorkingDays,
      'appointments': appointments
     };
  }

  static List<BusinessPayload> listFromJson(List<dynamic> json) {
    return json == null ? List<BusinessPayload>.empty(growable: true) : json.map((value) => new BusinessPayload.fromJson(value)).toList();
  }

  static Map<String, BusinessPayload> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BusinessPayload>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BusinessPayload.fromJson(value));
    }
    return map;
  }
}

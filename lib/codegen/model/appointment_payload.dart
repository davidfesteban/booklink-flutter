part of swagger.api;

class AppointmentPayload {
  
  String? id = null;

  String? slotOwner = null;

  DateTime? slotStartAppointment = null;

  int? slotDuration = null;

  String? slotService = null;

  String? manualBookingInfoByAdmin = null;

  String? manualBookingInviteToJoin = null;

  AppointmentPayload();

  @override
  String toString() {
    return 'AppointmentPayload[id=$id, slotOwner=$slotOwner, slotStartAppointment=$slotStartAppointment, slotDuration=$slotDuration, slotService=$slotService, manualBookingInfoByAdmin=$manualBookingInfoByAdmin, manualBookingInviteToJoin=$manualBookingInviteToJoin, ]';
  }

  AppointmentPayload.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    slotOwner = json['slotOwner'];
    slotStartAppointment = json['slotStartAppointment'] == null ? null : DateTime.parse(json['slotStartAppointment']);
    slotDuration = json['slotDuration'];
    slotService = json['slotService'];
    manualBookingInfoByAdmin = json['manualBookingInfoByAdmin'];
    manualBookingInviteToJoin = json['manualBookingInviteToJoin'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'slotOwner': slotOwner,
      'slotStartAppointment': slotStartAppointment == null ? '' : slotStartAppointment?.toUtc().toIso8601String(),
      'slotDuration': slotDuration,
      'slotService': slotService,
      'manualBookingInfoByAdmin': manualBookingInfoByAdmin,
      'manualBookingInviteToJoin': manualBookingInviteToJoin
     };
  }

  static List<AppointmentPayload> listFromJson(List<dynamic> json) {
    return json == null ? List<AppointmentPayload>.empty(growable: true) : json.map((value) => new AppointmentPayload.fromJson(value)).toList();
  }

  static Map<String, AppointmentPayload> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AppointmentPayload>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AppointmentPayload.fromJson(value));
    }
    return map;
  }
}

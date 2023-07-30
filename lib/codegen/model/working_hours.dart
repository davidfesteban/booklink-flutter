part of swagger.api;

class WorkingHours {
  
  LocalTime? workStartHour = null;

  LocalTime? workStopHour = null;

  LocalTime? breakStartHour = null;

  LocalTime? breakStopHour = null;

  WorkingHours();

  @override
  String toString() {
    return 'WorkingHours[workStartHour=$workStartHour, workStopHour=$workStopHour, breakStartHour=$breakStartHour, breakStopHour=$breakStopHour, ]';
  }

  WorkingHours.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    workStartHour = new LocalTime.fromJson(json['workStartHour']);
    workStopHour = new LocalTime.fromJson(json['workStopHour']);
    breakStartHour = new LocalTime.fromJson(json['breakStartHour']);
    breakStopHour = new LocalTime.fromJson(json['breakStopHour']);
  }

  Map<String, dynamic> toJson() {
    return {
      'workStartHour': workStartHour,
      'workStopHour': workStopHour,
      'breakStartHour': breakStartHour,
      'breakStopHour': breakStopHour
     };
  }

  static List<WorkingHours> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkingHours>.empty(growable: true) : json.map((value) => new WorkingHours.fromJson(value)).toList();
  }

  static Map<String, WorkingHours> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkingHours>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkingHours.fromJson(value));
    }
    return map;
  }
}

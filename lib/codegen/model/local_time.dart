part of swagger.api;

class LocalTime {
  
  int? hour = null;

  int? minute = null;

  int? second = null;

  int? nano = null;

  LocalTime();

  @override
  String toString() {
    return 'LocalTime[hour=$hour, minute=$minute, second=$second, nano=$nano, ]';
  }

  LocalTime.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hour = json['hour'];
    minute = json['minute'];
    second = json['second'];
    nano = json['nano'];
  }

  Map<String, dynamic> toJson() {
    return {
      'hour': hour,
      'minute': minute,
      'second': second,
      'nano': nano
     };
  }

  static List<LocalTime> listFromJson(List<dynamic> json) {
    return json == null ? List<LocalTime>.empty(growable: true) : json.map((value) => new LocalTime.fromJson(value)).toList();
  }

  static Map<String, LocalTime> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LocalTime>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LocalTime.fromJson(value));
    }
    return map;
  }
}

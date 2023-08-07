//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LocalTime {
  /// Returns a new [LocalTime] instance.
  LocalTime({
    this.hour,
    this.minute,
    this.second,
    this.nano,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? hour;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? minute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? second;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nano;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalTime &&
     other.hour == hour &&
     other.minute == minute &&
     other.second == second &&
     other.nano == nano;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hour == null ? 0 : hour!.hashCode) +
    (minute == null ? 0 : minute!.hashCode) +
    (second == null ? 0 : second!.hashCode) +
    (nano == null ? 0 : nano!.hashCode);

  @override
  String toString() => 'LocalTime[hour=$hour, minute=$minute, second=$second, nano=$nano]';

  String toJson() {
    return "${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}:${second.toString().padLeft(2, '0')}";
  }

  /// Returns a new [LocalTime] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalTime? fromJson(dynamic value) {
    if (value is List) {
      return LocalTime(
        hour: value[0],
        minute: value[1],
        second: 0,
        nano: 0,
      );
    }
    return null;
  }

  static List<LocalTime> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalTime>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalTime.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalTime> mapFromJson(dynamic json) {
    final map = <String, LocalTime>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalTime.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalTime-objects as value to a dart map
  static Map<String, List<LocalTime>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalTime>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalTime.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


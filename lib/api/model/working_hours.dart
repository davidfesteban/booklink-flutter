//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WorkingHours {
  /// Returns a new [WorkingHours] instance.
  WorkingHours({
    this.workStartHour,
    this.workStopHour,
    this.breakStartHour,
    this.breakStopHour,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LocalTime? workStartHour;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LocalTime? workStopHour;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LocalTime? breakStartHour;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LocalTime? breakStopHour;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkingHours &&
     other.workStartHour == workStartHour &&
     other.workStopHour == workStopHour &&
     other.breakStartHour == breakStartHour &&
     other.breakStopHour == breakStopHour;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (workStartHour == null ? 0 : workStartHour!.hashCode) +
    (workStopHour == null ? 0 : workStopHour!.hashCode) +
    (breakStartHour == null ? 0 : breakStartHour!.hashCode) +
    (breakStopHour == null ? 0 : breakStopHour!.hashCode);

  @override
  String toString() => 'WorkingHours[workStartHour=$workStartHour, workStopHour=$workStopHour, breakStartHour=$breakStartHour, breakStopHour=$breakStopHour]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.workStartHour != null) {
      json[r'workStartHour'] = this.workStartHour;
    } else {
      json[r'workStartHour'] = null;
    }
    if (this.workStopHour != null) {
      json[r'workStopHour'] = this.workStopHour;
    } else {
      json[r'workStopHour'] = null;
    }
    if (this.breakStartHour != null) {
      json[r'breakStartHour'] = this.breakStartHour;
    } else {
      json[r'breakStartHour'] = null;
    }
    if (this.breakStopHour != null) {
      json[r'breakStopHour'] = this.breakStopHour;
    } else {
      json[r'breakStopHour'] = null;
    }
    return json;
  }

  /// Returns a new [WorkingHours] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkingHours? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WorkingHours[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WorkingHours[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WorkingHours(
        workStartHour: LocalTime.fromJson(json[r'workStartHour']),
        workStopHour: LocalTime.fromJson(json[r'workStopHour']),
        breakStartHour: LocalTime.fromJson(json[r'breakStartHour']),
        breakStopHour: LocalTime.fromJson(json[r'breakStopHour']),
      );
    }
    return null;
  }

  static List<WorkingHours> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkingHours>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkingHours.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkingHours> mapFromJson(dynamic json) {
    final map = <String, WorkingHours>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkingHours.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkingHours-objects as value to a dart map
  static Map<String, List<WorkingHours>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkingHours>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorkingHours.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


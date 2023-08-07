//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BusinessPayload {
  /// Returns a new [BusinessPayload] instance.
  BusinessPayload({
    this.subdomain,
    this.name,
    this.address,
    this.email,
    this.phone,
    this.slotDurationByServices = const {},
    this.workingHoursByDay = const {},
    this.slotOwners = const {},
    this.specialWorkingDays = const {},
    this.appointments = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subdomain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phone;

  Map<String, int> slotDurationByServices;

  Map<String, WorkingHours> workingHoursByDay;

  Set<String> slotOwners;

  Map<String, WorkingHours> specialWorkingDays;

  Set<AppointmentPayload> appointments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BusinessPayload &&
     other.subdomain == subdomain &&
     other.name == name &&
     other.address == address &&
     other.email == email &&
     other.phone == phone &&
     other.slotDurationByServices == slotDurationByServices &&
     other.workingHoursByDay == workingHoursByDay &&
     other.slotOwners == slotOwners &&
     other.specialWorkingDays == specialWorkingDays &&
     other.appointments == appointments;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subdomain == null ? 0 : subdomain!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (slotDurationByServices.hashCode) +
    (workingHoursByDay.hashCode) +
    (slotOwners.hashCode) +
    (specialWorkingDays.hashCode) +
    (appointments.hashCode);

  @override
  String toString() => 'BusinessPayload[subdomain=$subdomain, name=$name, address=$address, email=$email, phone=$phone, slotDurationByServices=$slotDurationByServices, workingHoursByDay=$workingHoursByDay, slotOwners=$slotOwners, specialWorkingDays=$specialWorkingDays, appointments=$appointments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.subdomain != null) {
      json[r'subdomain'] = this.subdomain;
    } else {
      json[r'subdomain'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
    }
      json[r'slotDurationByServices'] = this.slotDurationByServices;
      json[r'workingHoursByDay'] = this.workingHoursByDay;
      json[r'slotOwners'] = this.slotOwners.map((item) => item).toList();
      json[r'specialWorkingDays'] = this.specialWorkingDays;
      json[r'appointments'] = this.appointments.map((item) => item.toJson()).toList();
    return json;
  }

  /// Returns a new [BusinessPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BusinessPayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BusinessPayload[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BusinessPayload[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BusinessPayload(
        subdomain: mapValueOfType<String>(json, r'subdomain'),
        name: mapValueOfType<String>(json, r'name'),
        address: mapValueOfType<String>(json, r'address'),
        email: mapValueOfType<String>(json, r'email'),
        phone: mapValueOfType<String>(json, r'phone'),
        slotDurationByServices: mapCastOfType<String, int>(json, r'slotDurationByServices') ?? const {},
        workingHoursByDay: WorkingHours.mapFromJson(json[r'workingHoursByDay']),
        slotOwners: json[r'slotOwners'] is List
            ? Set.from((json[r'slotOwners'] as List))
            : const {},
        specialWorkingDays: WorkingHours.mapFromJson(json[r'specialWorkingDays']),
        appointments: AppointmentPayload.listFromJson(json[r'appointments']).toSet(),
      );
    }
    return null;
  }

  static List<BusinessPayload> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BusinessPayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BusinessPayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BusinessPayload> mapFromJson(dynamic json) {
    final map = <String, BusinessPayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BusinessPayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BusinessPayload-objects as value to a dart map
  static Map<String, List<BusinessPayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BusinessPayload>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BusinessPayload.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


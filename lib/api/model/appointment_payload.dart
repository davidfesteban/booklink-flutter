import '../api_helper.dart';

class AppointmentPayload {
  /// Returns a new [AppointmentPayload] instance.
  AppointmentPayload({
    this.id,
    this.slotOwner,
    this.slotStartAppointment,
    this.slotDuration,
    this.slotService,
    this.manualBookingInfoByAdmin,
    this.manualBookingInviteToJoin,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slotOwner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? slotStartAppointment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? slotDuration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slotService;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? manualBookingInfoByAdmin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? manualBookingInviteToJoin;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AppointmentPayload &&
     other.id == id &&
     other.slotOwner == slotOwner &&
     other.slotStartAppointment == slotStartAppointment &&
     other.slotDuration == slotDuration &&
     other.slotService == slotService &&
     other.manualBookingInfoByAdmin == manualBookingInfoByAdmin &&
     other.manualBookingInviteToJoin == manualBookingInviteToJoin;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (slotOwner == null ? 0 : slotOwner!.hashCode) +
    (slotStartAppointment == null ? 0 : slotStartAppointment!.hashCode) +
    (slotDuration == null ? 0 : slotDuration!.hashCode) +
    (slotService == null ? 0 : slotService!.hashCode) +
    (manualBookingInfoByAdmin == null ? 0 : manualBookingInfoByAdmin!.hashCode) +
    (manualBookingInviteToJoin == null ? 0 : manualBookingInviteToJoin!.hashCode);

  @override
  String toString() => 'AppointmentPayload[id=$id, slotOwner=$slotOwner, slotStartAppointment=$slotStartAppointment, slotDuration=$slotDuration, slotService=$slotService, manualBookingInfoByAdmin=$manualBookingInfoByAdmin, manualBookingInviteToJoin=$manualBookingInviteToJoin]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.slotOwner != null) {
      json[r'slotOwner'] = this.slotOwner;
    } else {
      json[r'slotOwner'] = null;
    }
    if (this.slotStartAppointment != null) {
      json[r'slotStartAppointment'] = this.slotStartAppointment!.toUtc().toIso8601String();
    } else {
      json[r'slotStartAppointment'] = null;
    }
    if (this.slotDuration != null) {
      json[r'slotDuration'] = this.slotDuration;
    } else {
      json[r'slotDuration'] = null;
    }
    if (this.slotService != null) {
      json[r'slotService'] = this.slotService;
    } else {
      json[r'slotService'] = null;
    }
    if (this.manualBookingInfoByAdmin != null) {
      json[r'manualBookingInfoByAdmin'] = this.manualBookingInfoByAdmin;
    } else {
      json[r'manualBookingInfoByAdmin'] = null;
    }
    if (this.manualBookingInviteToJoin != null) {
      json[r'manualBookingInviteToJoin'] = this.manualBookingInviteToJoin;
    } else {
      json[r'manualBookingInviteToJoin'] = null;
    }
    return json;
  }

  /// Returns a new [AppointmentPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AppointmentPayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AppointmentPayload[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AppointmentPayload[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AppointmentPayload(
        id: mapValueOfType<String>(json, r'id'),
        slotOwner: mapValueOfType<String>(json, r'slotOwner'),
        slotStartAppointment: mapDateTime(json, r'slotStartAppointment', ''),
        slotDuration: mapValueOfType<int>(json, r'slotDuration'),
        slotService: mapValueOfType<String>(json, r'slotService'),
        manualBookingInfoByAdmin: mapValueOfType<String>(json, r'manualBookingInfoByAdmin'),
        manualBookingInviteToJoin: mapValueOfType<String>(json, r'manualBookingInviteToJoin'),
      );
    }
    return null;
  }

  static List<AppointmentPayload> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AppointmentPayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AppointmentPayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AppointmentPayload> mapFromJson(dynamic json) {
    final map = <String, AppointmentPayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AppointmentPayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AppointmentPayload-objects as value to a dart map
  static Map<String, List<AppointmentPayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AppointmentPayload>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AppointmentPayload.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


import '../api_helper.dart';
import 'appointment_payload.dart';
import 'business_payload.dart';

class UserPayload {
  /// Returns a new [UserPayload] instance.
  UserPayload({
    this.name,
    this.email,
    this.password,
    this.phone,
    this.business,
    this.appointments = const {},
  });

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
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BusinessPayload? business;

  Set<AppointmentPayload> appointments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserPayload &&
     other.name == name &&
     other.email == email &&
     other.password == password &&
     other.phone == phone &&
     other.business == business &&
     other.appointments == appointments;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (password == null ? 0 : password!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (business == null ? 0 : business!.hashCode) +
    (appointments.hashCode);

  @override
  String toString() => 'UserPayload[name=$name, email=$email, password=$password, phone=$phone, business=$business, appointments=$appointments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
    }
    if (this.business != null) {
      json[r'business'] = this.business;
    } else {
      json[r'business'] = null;
    }
      json[r'appointments'] = this.appointments.map((item) => item.toJson()).toList();
    return json;
  }

  /// Returns a new [UserPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserPayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserPayload[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserPayload[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserPayload(
        name: mapValueOfType<String>(json, r'name'),
        email: mapValueOfType<String>(json, r'email'),
        password: mapValueOfType<String>(json, r'password'),
        phone: mapValueOfType<String>(json, r'phone'),
        business: BusinessPayload.fromJson(json[r'business']),
        appointments: AppointmentPayload.listFromJson(json[r'appointments']).toSet(),
      );
    }
    return null;
  }

  static List<UserPayload> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserPayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserPayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserPayload> mapFromJson(dynamic json) {
    final map = <String, UserPayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserPayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserPayload-objects as value to a dart map
  static Map<String, List<UserPayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserPayload>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserPayload.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


import 'package:flutter/material.dart';

import '../../../api/model/business_payload.dart';

class BusinessCreateSingleton {
  static final BusinessCreateSingleton _instance = BusinessCreateSingleton._internal();

  factory BusinessCreateSingleton() {
    return _instance;
  }

  BusinessCreateSingleton._internal();

  BusinessPayload? businessPayload;
  GlobalKey<FormState>? detailsKey;
  GlobalKey<FormState>? servicesKey;
  GlobalKey<FormState>? placesKey;
  GlobalKey<FormState>? registrationKey;
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KeyStoreCubit extends Cubit<KeyStore> {
  KeyStoreCubit() : super(KeyStore(GlobalKey(), GlobalKey(), null, null));

  void update(KeyStore keyStore) => emit(keyStore);

  void setToken(String token) => emit(state.setToken(token));

  //TODO: User clics on link, prompt the business, try to book, has no account or has it. Manage that.
  void setBusinessLink(String domain) => emit(state.setBusinessLink(domain));

  KeyStore get() => state;
}

class KeyStore {
  KeyStore(this.navigatorKey, this.scaffoldKey, this.businessLink, this.jwtToken);

  GlobalKey<NavigatorState> navigatorKey;
  GlobalKey<ScaffoldMessengerState> scaffoldKey;
  String? businessLink;
  String? jwtToken;

  KeyStore setToken(String? jwtToken) {
    this.jwtToken = jwtToken;
    return this;
  }

  KeyStore setBusinessLink(String? businessLink) {
    this.businessLink = businessLink;
    return this;
  }
}
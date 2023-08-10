import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SnackbarCubit extends Cubit<GlobalKey<ScaffoldMessengerState>> {
  SnackbarCubit() : super(GlobalKey());

  GlobalKey<ScaffoldMessengerState> get() => state;
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigatorCubit extends Cubit<GlobalKey<NavigatorState>> {
  NavigatorCubit() : super(GlobalKey());

  GlobalKey<NavigatorState> get() => state;
}
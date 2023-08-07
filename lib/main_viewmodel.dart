import 'package:booklink_visual/api/api/business_api_service.dart';
import 'package:booklink_visual/api/api/user_api_service.dart';
import 'package:booklink_visual/api/model/appointment_payload.dart';
import 'package:booklink_visual/screen/cubit/business/business_appointments_cubit.dart';
import 'package:booklink_visual/screen/cubit/user/key_store.dart';
import 'package:booklink_visual/screen/cubit/user/user_appointments_cubit.dart';
import 'package:booklink_visual/utils/persistanceutils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainViewModel {
  static Future<bool> reloadKeyStore(BuildContext context) async {
    var jwtToken = context.read<KeyStoreCubit>().get().jwtToken;
    var jwtTokenStore = await PersistanceUtils.getUserTokenFromMemory();

    jwtToken ??= jwtTokenStore;

    try {
      if (await UserApiService().findDetails(jwtToken!) != null) {
        context.read<KeyStoreCubit>().setToken(jwtToken);
        return true;
      }
      return false;
    } catch (error) {
      return false;
    }
  }

  static Future<bool> reloadUserAppointments(BuildContext context) async {
    var jwtToken = context.read<KeyStoreCubit>().get().jwtToken;
    var user = await UserApiService().findDetails(jwtToken!);

    if (user != null) {
      List<UnionBusinessAppointment>? userAppointments = List.empty(growable: true);
      for (var element in user.appointments) {
        var business = await BusinessApiService().findBusinessDetailsByAppointmentId(element.id!);
        userAppointments.add(UnionBusinessAppointment(element, business!));
      }

      context.read<UserAppointmentsCubit>().update(UserAppointments(user, userAppointments));
      return true;
    }

    return false;
  }

  static Future<bool> reloadMyBusinessAppointments(BuildContext context) async {
    var jwtToken = context.read<KeyStoreCubit>().get().jwtToken;
    var user = await UserApiService().findDetails(jwtToken!);

    if (user != null && user.business != null && user.business!.subdomain != null) {
      var business = await BusinessApiService().findBusinessDetails("${user.business!.subdomain!}.booklink.app");
      if (business != null) {
        context.read<BusinessAppointmentsCubit>().update(BusinessAppointments(business, await getUserInfo(business.appointments, jwtToken)));
        return true;
      }
    }

    return false;
  }

  static Future<List<UnionUserAppointment>?> getUserInfo(Set<AppointmentPayload> appointments, String jwtToken) async {
    var info = List<UnionUserAppointment>.empty(growable: true);

    for (var element in appointments) {
      var userFromAppointment = await UserApiService().findDetailsByAppointmentId(jwtToken, element.id!);
      info.add(UnionUserAppointment(element, userFromAppointment!));
    }

    return info;
  }
}

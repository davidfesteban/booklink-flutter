import 'dart:html';

import 'package:booklink_visual/api/api.dart';
import 'package:booklink_visual/main_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentsPage extends StatefulWidget {
  @override
  State<AppointmentsPage> createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage>
    with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<UserCacheCubit, UserPayload?>(
      builder: (context, state) {
        if(state != null && state.appointments.isNotEmpty) {
          return ListView(
            children: _createCardFromAppointment(state.appointments),
          );
        } else {
          return Text("No appointmets");
        }
      }
    );
  }

  List<Widget> _createCardFromAppointment(Set<AppointmentPayload> appointments) {
    return appointments.map((e) =>
        ListTile(
          title: ,
        )
    ).toList(growable: true);
  }
}
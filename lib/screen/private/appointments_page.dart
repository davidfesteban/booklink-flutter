import 'package:booklink_visual/screen/cubit/user/user_appointments_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentsPage extends StatefulWidget {
  const AppointmentsPage({super.key});

  @override
  State<AppointmentsPage> createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage> with TickerProviderStateMixin {
  //TODO: Pull up to refresh
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserAppointmentsCubit, UserAppointments?>(builder: (context, state) {
      if (state != null && state.userAppointments != null && state.userAppointments!.isNotEmpty) {
        return ListView(
          children: _createCardFromAppointment(state.userAppointments!),
        );
      } else {
        return Text("No appointments");
      }
    });
  }

  List<Widget> _createCardFromAppointment(List<UnionBusinessAppointment> userAppointments) {
    return userAppointments
        .map((e) => ListTile(
              title: Text(e.businessPayload.name!),
            ))
        .toList(growable: true);
  }
}

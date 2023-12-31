import 'package:booklink_visual/api/model/appointment_payload.dart';
import 'package:booklink_visual/api/model/user_payload.dart';
import 'package:booklink_visual/screen/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentsPage extends StatefulWidget {
  const AppointmentsPage({super.key});

  @override
  State<AppointmentsPage> createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage> with TickerProviderStateMixin {
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
    return BlocBuilder<UserCubit, UserPayload?>(builder: (context, state) {
      if (state != null) {
        return ListView(
          children: state.appointments.map((e) {
            return ListTile(
              title: _getTitle(e),
              subtitle: _getSubtitle(e),
              trailing: PopupMenuButton<String>(
                // Callback that sets the selected popup menu item.
                onSelected: (String item) {
                  setState(() {
                    //DO stuff
                  });
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: "Delete",
                    child: Text('Delete'),
                  ),
                  const PopupMenuItem<String>(
                    value: "Maps",
                    child: Text('Maps'),
                  ),
                ],
              ),
            );
          }).toList(growable: false),
        );
      } else {
        return Text("Nothing to show");
      }
    });
  }

  Widget _getTitle(AppointmentPayload appointmentPayload) {
    return Text(appointmentPayload.businessPayload!.name!);
  }

  Widget _getSubtitle(AppointmentPayload appointmentPayload) {
    return Text(appointmentPayload.businessPayload!.address!);
  }
}

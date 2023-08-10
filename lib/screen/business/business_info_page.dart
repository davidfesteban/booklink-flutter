import 'package:booklink_visual/api/model/user_payload.dart';
import 'package:booklink_visual/screen/business/business_create_page.dart';
import 'package:booklink_visual/screen/cubit/navigator_cubit.dart';
import 'package:booklink_visual/screen/cubit/token_cubit.dart';
import 'package:booklink_visual/screen/cubit/user_cubit.dart';
import 'package:booklink_visual/screen/loading/loading_viewmodel.dart';
import 'package:booklink_visual/screen/private/appointments_page.dart';
import 'package:booklink_visual/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BusinessInfoPage extends StatefulWidget {
  const BusinessInfoPage({
    super.key,
  });

  @override
  State<BusinessInfoPage> createState() => _BusinessInfoPageState();
}

class _BusinessInfoPageState extends State<BusinessInfoPage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserCubit, UserPayload?>(
      listener: (context, state) {
        if (state == null) {
          LoadingViewModel.perform(context, home_route, UserCubit.reloadFromApi(context));
        }
      },
      child: _scaffold(context), // This widget is not rebuilt, just used for hierarchy
    );
  }

  Widget _scaffold(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My space"),
        leading: IconButton.outlined(onPressed: () => showLogoutDialog(context), icon: Icon(Icons.logout)),
        actions: [
          IconButton.outlined(onPressed: () => showProfileDialog(context), icon: Icon(Icons.person)),
          IconButton.outlined(onPressed: () => context.read<NavigatorCubit>().get().currentState?.pushReplacementNamed(business_route),
              icon: Icon(Icons.business))
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: "Appointments",
            ),
            Tab(
              text: "Edit",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: AppointmentsPage(),
          ),
          Center(
            child: BusinessCreatePage(),
          )
        ],
      ),
    );
  }

  void showLogoutDialog(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('AlertDialog Title'),
        content: const Text('AlertDialog description'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => LoadingViewModel.perform(context, login_route, TokenCubit.logout(context)),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void showProfileDialog(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => Dialog.fullscreen(
        child: AppBar(
          title: Text("Profile"),
          leading: IconButton.outlined(onPressed: () => Navigator.pop(context), icon: Icon(Icons.cancel_outlined)),
          flexibleSpace: Center(child: Text(context.read<UserCubit>().get()!.toString())),
        ),
      ),
    );
  }

}
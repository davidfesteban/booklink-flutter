import 'package:booklink_visual/api/api.dart';
import 'package:booklink_visual/screen/booking/booking_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
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
    return BlocBuilder<BusinessCubit, BusinessPayload?>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
            tabs: const <Widget>[
              Tab(
                text: "My appointments",
              ),
              Tab(
                text: "My places",
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const <Widget>[
            Center(
              child: MyAppointments(),
            ),
            Center(
              child: Text("It's rainy here"),
            )
          ],
        ),
      );
    });
  }
}
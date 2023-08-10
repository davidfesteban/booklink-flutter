import 'package:booklink_visual/screen/booking/booking_viewmodel.dart';
import 'package:booklink_visual/screen/cubit/business_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../api/model/business_payload.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({
    super.key,
  });

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BusinessCubit, BusinessPayload?>(builder: (context, state) {
      if (state == null) {
        return FloatingActionButton(onPressed: () => BookingViewModel.recoverBusinessDetails(context));
      }

      return Scaffold(
        appBar: AppBar(
          title: Text(state.name!),
          bottom: TabBar(
            controller: _tabController,
            onTap: (index) {
              if (_tabController.indexIsChanging && _tabController.index > _tabController.previousIndex) {
                _tabController.index = _tabController.previousIndex;
              } else {
                return;
              }
            },
            tabs: const <Widget>[
              Tab(
                text: "What",
              ),
              Tab(
                text: "When",
              ),
              Tab(
                text: "Where",
              ),
              Tab(
                text: "Checkout",
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
            Center(
              child: Text("It's caca here"),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              if (_tabController.length - 1 > _tabController.index && 0 <= _tabController.index) {
                _tabController.animateTo(_tabController.index + 1);
              } else {
                // Create appointment
              }
            },
            label: const Text("Next step")),
      );
    });
  }
}

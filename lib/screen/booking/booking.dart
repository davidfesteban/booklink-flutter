import 'package:booklink_visual/api/api.dart';
import 'package:booklink_visual/screen/booking/booking_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        return const CircularProgressIndicator();
      }

      return Scaffold(
        appBar: AppBar(
          title: Text(state.name!),
          bottom: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                child: GestureDetector(
                    child: Text("What"),
                    onTap: () {
                      if (_tabController.index > 0) _tabController.animateTo(0);
                    }),
              ),
              Tab(
                child: GestureDetector(
                    child: Text("When"),
                    onTap: () {
                      if (_tabController.index > 1) _tabController.animateTo(1);
                    }),
              ),
              Tab(
                child: GestureDetector(
                    child: Text("Where"),
                    onTap: () {
                      if (_tabController.index > 2) _tabController.animateTo(2);
                    }),
              ),
              Tab(
                child: GestureDetector(
                    child: Text("Checkout"),
                    onTap: () {
                      if (_tabController.index > 3) _tabController.animateTo(3);
                    }),
              ),
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
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              if (_tabController.length - 1 < _tabController.index) {
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

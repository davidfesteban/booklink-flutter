import 'package:booklink_visual/screen/private/appointments_page.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        //TODO: Logout
        leading: IconButton.filled(onPressed: null, icon: Icon(Icons.logout)),
        actions: [
          IconButton.filled(onPressed: showProfileDialog(context), icon: Icon(Icons.person)),
          IconButton.filled(onPressed: null, icon: Icon(Icons.business))
        ],
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
            child: AppointmentsPage(),
          ),
          Center(
            child: Text("It's rainy here"),
          )
        ],
      ),
    );
  }

  showProfileDialog(BuildContext context) {
    showDialog(context: context, builder: builder)
  }
}

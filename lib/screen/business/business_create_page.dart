import 'package:booklink_visual/screen/business/create/places_widget.dart';
import 'package:booklink_visual/screen/business/create/service_widget.dart';
import 'package:booklink_visual/screen/business/create/singleton.dart';
import 'package:booklink_visual/screen/business/create/work_widget.dart';
import 'package:booklink_visual/screen/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../api/model/business_payload.dart';

class BusinessCreatePage extends StatefulWidget {
  const BusinessCreatePage({
    super.key,
  });

  @override
  State<BusinessCreatePage> createState() => _BusinessCreatePageState();
}

class _BusinessCreatePageState extends State<BusinessCreatePage> with TickerProviderStateMixin {
  late final TabController _tabController;
  late final BusinessCreateSingleton businessCreateSingleton;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    businessCreateSingleton = BusinessCreateSingleton();
    businessCreateSingleton.businessPayload = context.read<UserCubit>().get()?.business ?? BusinessPayload();
    businessCreateSingleton.detailsKey = GlobalKey();
    businessCreateSingleton.servicesKey = GlobalKey();
    businessCreateSingleton.placesKey = GlobalKey();
    businessCreateSingleton.registrationKey = GlobalKey();
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
        title: Text("Introduce your business details"),
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
              text: "Details",
            ),
            Tab(
              text: "Services",
            ),
            Tab(
              text: "Places",
            ),
            Tab(
              text: "Hours",
            ),
            Tab(
              text: "Registration",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: _detailsForm(),
          ),
          Center(
            child: ServiceList(),
          ),
          Center(
            child: PlaceList(),
          ),
          Center(
            child: WorkScheduleWidget(),
          ),
          Center(
            child: _registrationForm(),
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
  }

  Widget _detailsForm() {
    return Form(
      key: businessCreateSingleton.detailsKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            initialValue: businessCreateSingleton.businessPayload?.name,
            decoration: InputDecoration(labelText: 'Name'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a name';
              }
              return null;
            },
            onSaved: (value) {
              businessCreateSingleton.businessPayload?.name = value;
            },
          ),
          TextFormField(
            initialValue: businessCreateSingleton.businessPayload?.address,
            decoration: InputDecoration(labelText: 'Address'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter an address';
              }
              return null;
            },
            onSaved: (value) {
              businessCreateSingleton.businessPayload?.address = value;
            },
          ),
          TextFormField(
            initialValue: businessCreateSingleton.businessPayload?.email,
            decoration: InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter an email. Can be also yours.';
              }
              return null;
            },
            onSaved: (value) {
              businessCreateSingleton.businessPayload?.email = value;
            },
          ),
          TextFormField(
            initialValue: businessCreateSingleton.businessPayload?.phone,
            decoration: InputDecoration(labelText: 'Phone'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a phone number';
              }
              return null;
            },
            onSaved: (value) {
              businessCreateSingleton.businessPayload?.phone = value;
            },
          ),
          SizedBox(height: 16)
        ],
      ),
    );
  }

  Widget _registrationForm() {
    return Form(
      key: businessCreateSingleton.detailsKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            initialValue: businessCreateSingleton.businessPayload?.name,
            decoration: InputDecoration(labelText: 'Unique name domain'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a name';
              }
              return null;
            },
            onSaved: (value) {
              businessCreateSingleton.businessPayload?.subdomain = value;
            },
          ),
          SizedBox(height: 16)
        ],
      ),
    );
  }
}

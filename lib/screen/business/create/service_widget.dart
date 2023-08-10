import 'package:booklink_visual/screen/business/create/singleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Service {
  final String service;
  final String duration;

  Service(this.service, this.duration);
}

class ServiceList extends StatefulWidget {
  @override
  State<ServiceList> createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  List<Service> services = List.empty(growable: true);

  TextEditingController _serviceController = TextEditingController();
  TextEditingController _durationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    BusinessCreateSingleton().businessPayload?.slotDurationByServices.forEach((key, value) {services.add(Service(key, value.toString()));});
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: services.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(services[index].service),
                subtitle: Text('Duration: ${services[index].duration}'),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _serviceController,
                decoration: InputDecoration(labelText: 'Service'),
              ),
              TextField(
                controller: _durationController,
                decoration: InputDecoration(labelText: 'Duration in minutes'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _addService,
                child: Text('Add Service'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _addService() {
    String service = _serviceController.text;
    String duration = _durationController.text;

    if (service.isNotEmpty && duration.isNotEmpty) {
      if (BusinessCreateSingleton().businessPayload!.slotDurationByServices.isEmpty) {
        BusinessCreateSingleton().businessPayload!.slotDurationByServices = <String, int>{};
      }
      BusinessCreateSingleton().businessPayload!.slotDurationByServices[service] = int.parse(duration);
      setState(() {
        services.add(Service(service, duration));
        _serviceController.clear();
        _durationController.clear();
      });
    }
  }
}

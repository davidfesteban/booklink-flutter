import 'package:booklink_visual/screen/business/create/singleton.dart';
import 'package:flutter/material.dart';


class PlaceList extends StatefulWidget {
  @override
  State<PlaceList> createState() => _PlaceListState();
}

class _PlaceListState extends State<PlaceList> {
  List<String> places = [];

  TextEditingController _placeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    BusinessCreateSingleton().businessPayload?.slotOwners.forEach((element) {places.add(element);});

    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: places.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(places[index]),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _placeController,
                decoration: InputDecoration(labelText: 'Place name'),
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
    String place = _placeController.text;

    if (place.isNotEmpty) {
      if(BusinessCreateSingleton().businessPayload!.slotOwners.isEmpty) {
        BusinessCreateSingleton().businessPayload!.slotOwners = <String>{};
      }
      BusinessCreateSingleton().businessPayload!.slotOwners.add(place);
      setState(() {
        places.add(place);
        _placeController.clear();
      });
    }
  }
}
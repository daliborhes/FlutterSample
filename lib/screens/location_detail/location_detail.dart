// screens/home/home.dart

import 'package:flutter/material.dart';
import 'package:flutter_example/models/location.dart';
import 'package:flutter_example/screens/location_detail/text_section.dart';
import 'package:flutter_example/widgets/image_banner.dart';
import 'package:flutter_example/widgets/location_tile.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchByID(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageBanner(imgPath: location.imagePath),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),
                child: LocationTile(location: location),
              )
            ]..addAll(textSections(location))),
      ),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}

import 'package:airbnb_clone/data/PropertyDetail.dart';
import 'package:airbnb_clone/ui/home/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        propertyDetail: generatePropertyDetail(),
      ),
    );
  }
}

PropertyDetail generatePropertyDetail() {
  return PropertyDetail();
}

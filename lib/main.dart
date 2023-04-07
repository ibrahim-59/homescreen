import 'package:flutter/material.dart';
import 'package:homescreen/pages/nearbay_gym_screen.dart';

import 'pages/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: NearbyGym(),

    );
  }
}



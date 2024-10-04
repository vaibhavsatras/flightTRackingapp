

import 'package:flutter/material.dart';
import 'package:myapp/pages/bookflight.dart';
import 'package:myapp/pages/landing_page.dart';
import 'package:myapp/pages/trackingPage.dart';

void main()
{
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 91, 125, 153)
      ),

      initialRoute: '/',
      routes: {
        '/':(context)=>landing_page(),
        '/tracking':(context)=>trackingPage(),
        '/bookingFlite': (context)=>Bookflight()
      },
  ));
}
import 'package:flutter/material.dart';
import 'package:wild_wonder/home_page.dart' as Home;
import 'feedback_screen.dart';
import 'login_page.dart';
import 'booking_page.dart';
import 'animal_details_screen.dart' as AnimalDetails;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wild Wonder',
      initialRoute: '/',
      routes: {
        '/': (context) => Home.HomePage(),
        '/login': (context) => LoginPage(),
        '/booking': (context) => BookingPage(),
        '/feedback': (context) => FeedbackScreen(),
        '/animal_details': (context) => AnimalDetails.AnimalSpeciesSelection(),
        '/logout': (context) => Home.HomePage(),
      },
    );
  }
}





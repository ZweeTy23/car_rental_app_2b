import 'package:car_rental_app_2b/firebase_options.dart';
import 'package:car_rental_app_2b/presentation/pages/car_details_page.dart';
import 'package:car_rental_app_2b/presentation/pages/car_list_screen.dart';
import 'package:car_rental_app_2b/presentation/pages/maps_details_page.dart';
import 'package:car_rental_app_2b/presentation/pages/onboarding_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnboardingPage(),
    );
  }
}
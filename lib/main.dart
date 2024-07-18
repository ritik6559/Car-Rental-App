import 'package:car_rental_app/firebase_options.dart';
import 'package:car_rental_app/presentation/home/screen/home_screen.dart';
import 'package:car_rental_app/presentation/onboarding/screens/on_boarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool isVisitedOnBoard = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SharedPreferences ref = await SharedPreferences.getInstance();
  isVisitedOnBoard = ref.getBool('isVisitedOnBoard') ?? false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: isVisitedOnBoard ? HomeScreen() : const OnboardingScreen(),
    );
  }
}

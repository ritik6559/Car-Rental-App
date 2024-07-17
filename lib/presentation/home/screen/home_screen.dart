import 'package:car_rental_app/data/models/car/car_model.dart';
import 'package:car_rental_app/presentation/home/widgets/car_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Car> cars = [
    Car(
      model: 'Fortuner GR',
      image: 'assets/car_image.png',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    Car(
      model: 'Fortuner GR',
      image: 'assets/white_car.png',
      distance: 900,
      fuelCapacity: 50,
      pricePerHour: 78,
    ),
    Car(
      model: 'Fortuner GR',
      image: 'assets/car_image.png',
      distance: 1000,
      fuelCapacity: 50,
      pricePerHour: 50,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text(
          "Choose your kind",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(car: cars[index]);
        },
      ),
    );
  }
}

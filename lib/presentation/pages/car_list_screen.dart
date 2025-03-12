import 'package:car_rental_app_2b/data/models/car.dart';
import 'package:car_rental_app_2b/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CarListScreen extends StatelessWidget {
  final List<Car> cars = [
    Car(model: 'Fortuner GR', distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: 'Fortuner GR', distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: 'Fortuner GR', distance: 870, fuelCapacity: 50, pricePerHour: 45),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index){
          return CarCard(car: cars[index]);
      }
      )
    );
  }
}
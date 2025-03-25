import 'package:car_rental_app_2b/data/models/car.dart';

abstract class CarRepository {
  Future<List<Car>> fetchCars();
}
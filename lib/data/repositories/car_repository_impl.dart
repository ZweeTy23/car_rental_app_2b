// ignore_for_file: empty_constructor_bodies

import 'package:car_rental_app_2b/data/datasources/firebase_car_data_source.dart';
import 'package:car_rental_app_2b/data/models/car.dart';
import 'package:car_rental_app_2b/domain/repositories/car_repository.dart';

class CarRepositoryImpl implements CarRepository{
  final FirebaseCarDataSource dataSource;

  CarRepositoryImpl(this.dataSource);

  @override
  Future<List<Car>> fetchCars() {
    return dataSource.getCars();
  }
}
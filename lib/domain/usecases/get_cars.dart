import 'package:car_rental_app_2b/data/models/car.dart';
import 'package:car_rental_app_2b/domain/repositories/car_repository.dart';

class GetCars {
  final  CarRepository repository;

  GetCars(this.repository);

  Future<List<Car>> call() async{
    return await repository.fetchCars();
  }
}
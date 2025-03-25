import 'package:car_rental_app_2b/presentation/bloc/car_bloc.dart';
import 'package:car_rental_app_2b/presentation/bloc/car_state.dart';
import 'package:car_rental_app_2b/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: use_key_in_widget_constructors
class CarListScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: BlocBuilder<CarBloc, CarState>(
        builder: (context, state){
          if(state is CarsLoading){
            return Center(child: CircularProgressIndicator(),);
          }
          else if(state is CarsLoaded) {
            return ListView.builder(
              itemCount: state.cars.length,
              itemBuilder: (context, index){
                return CarCard(car: state.cars[index]);
              },
            );
          }
          else if(state is CarsError) {
            return Center(child: Text('error : ${state.message}'),);
          }
          return Container();
        },
      ),
    );
  }
}
import 'package:car_rental_app_2b/presentation/pages/car_list_screen.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key}); 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C2B34),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/onboarding.png'
                  ),
                  fit: BoxFit.cover
                  )
              ) ,
            ),
          ),
          Expanded(
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Column(
                mainAxisAlignment: 
                  MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Premium cars. \nEnjoy the luxury',
                  style: TextStyle(
                    color: Colors.black54, 
                    fontSize: 32,
                    fontWeight: FontWeight.bold )
                    ),
                  SizedBox(height: 10),
                  Text('Premium and prestige car daily rental. \nExperience the thrill at a lower price',
                    style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16)
                    ),
                  SizedBox(
                    height: 20),
                  SizedBox(
                    width: 320,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => CarListScreen()), 
                          (route) => false);
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white
                      ), 
                      child: Text('Let\'s Go',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                        ),
                      )
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
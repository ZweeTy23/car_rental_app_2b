import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key}); 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/onboarding.png'
                ),
                fit: BoxFit.cover
                )
            ) ,
          ),
          Container(
            child: Column(
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
                SizedBox(height: 20,),
                SizedBox(
                  width: 320,
                  height: 54,
                  child: ElevatedButton(
                    onPressed: (){},
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
          )
        ],
      )
    );
  }
}
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/bookia_background.jpeg'),
                fit: BoxFit.cover)),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text('Order Your Book Now!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400
          )
          ,
          
          ),
          const SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(color:const Color(0xffBFA054),
              borderRadius: BorderRadius.circular(16)),
            ),
          )
          ],
        ),
      ),
    );
  }
}

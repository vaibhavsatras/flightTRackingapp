

import 'package:flutter/material.dart';
import 'package:myapp/pages/trackingPage.dart';

class landing_page extends StatefulWidget {
  const landing_page({super.key});

  @override
  State<landing_page> createState() => _landing_pageState();
}

class _landing_pageState extends State<landing_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Padding(padding: EdgeInsets.all(20),
        
        child:  Column(
          children: [
            Container(    

                margin: const EdgeInsets.only(top: 40),
                height: 180,
                width: 180,
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                      shape: BoxShape.circle,
                ),

              child: Image.asset('image.jpg')
            ),

            const SizedBox(
              height: 40.0,
            ),

            Container(
              child:  Column(
                children: [
                    Container(
                      child: const Text("Let's Enjoy A",style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                    ),

                    const SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: const Text("New World",style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                    )
                ],
              ),
            ),

           const SizedBox(
              height:60,
            ),
            
            const Text("Search The Safest destination",style: TextStyle(

                fontSize: 20.0,
                fontWeight: FontWeight.bold
            ),),
          const  SizedBox(
              height: 50,
            ),
           
            Container(

                  height: 40,
                  width: 250,
                child: ElevatedButton(onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>trackingPage()));

                },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 75, 95, 110),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )
                  ),
                 child: const Text("Get Started",style: TextStyle(color: Colors.white),)),

            )

          ],
        )
        ),
      )
    );
  }
}
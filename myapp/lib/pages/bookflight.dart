
import 'package:flutter/material.dart';

class Bookflight extends StatefulWidget
{ 
    @override

    State<Bookflight> createState()=> _BookFliteState();

}

class _BookFliteState extends State<Bookflight>
{
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        body: SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

          children: [

              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100),bottomRight: Radius.circular(100))
                ),

                child: Image.asset("flite.jpg",height: 50,width: 100,),

              ),

              SizedBox(height: 30,),
              
              Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                
                  children: [

                    Text("Book your flight",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Center(
                            child: Text("One Way",style: TextStyle(color: Colors.white),),
                          ),
                        ),
                         Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 219, 206, 206),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5))
                          ),
                          child: Center(
                            child: Text("Round Trip",style: TextStyle(color: Colors.grey),),
                          ),
                        )
                      ],
                    ),

                    Container(

                        margin: EdgeInsets.only(top: 30,right: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),

                      child: Padding(padding: EdgeInsets.symmetric(vertical:30,horizontal: 20 ),
                        child: SingleChildScrollView(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("From"),
                            SizedBox(height: 5,),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 235, 212, 212),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                              ),
                              child: Padding(padding: EdgeInsets.only(left: 10,bottom: 20),
                              child: TextField(
                                decoration: InputDecoration(border: InputBorder.none,hintText: "Search"),  
                              ),)
                            ),

                            SizedBox(height: 20,),

                            Text("To"),
                            SizedBox(height: 5,),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 235, 212, 212),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                              ),
                              child: Padding(padding: EdgeInsets.only(left: 10,bottom: 20),
                              child: TextField(
                                decoration: InputDecoration(border: InputBorder.none,hintText: "Search"),  
                              ),)
                            ),

                            SizedBox(height: 20,),

                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5))
                              ),
                              child:ElevatedButton(onPressed: (){}, 
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                elevation: 0,
                                backgroundColor: Theme.of(context).primaryColor
                              ),
                              child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 18),),
                              )
                            ),
                            
                          ],
                        ),
                        )
                      ),

                    )

                  ],
                ),
              )

              
          ],
        ),
        )
      );

  }
}
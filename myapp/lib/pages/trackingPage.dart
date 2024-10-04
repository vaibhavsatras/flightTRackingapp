
import 'package:flutter/material.dart';
import 'package:myapp/pages/bookflight.dart';
import 'package:myapp/pages/landing_page.dart';

class trackingPage extends StatefulWidget {
  @override
  State<trackingPage> createState() => _trackingPageState();
}

class _trackingPageState extends State<trackingPage> {

  var initialState = 0;
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),

            child: SingleChildScrollView(
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        
                        children: [
                          Container(  
                            height: 50,
                            width: 50,    
                            decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage('profile.jpg')),
                              borderRadius: BorderRadius.all(Radius.circular(100))
                            )

                          ),
                          SizedBox(width: 20,),
                          Text("Hi Vaibhav", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18.0),)
                        ],

                      ),

                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(100))
                        ),
                        child: const Icon(Icons.notifications,size: 20,) ,
                      )
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text("Where you want to",style: TextStyle(color: Colors.white,fontSize: 25),),
                      Text("go?",style: TextStyle(color: Colors.white,fontSize: 25),),
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  Container(
                    
                    height: 45,
                    width: 300,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),

                    child: Row(
                      
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Icon(Icons.search,size: 20,),
                        ),

                        Container(
                          height: 150,
                          width: 200,
                          child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                            decoration: InputDecoration(hintText: "Search a flight",border: InputBorder.none),
                          ),
                          )
                        )
                      ],
                    ),   
                  ),
                   SizedBox(
                    height: 30,
                  ),
                  Text("Upcomming Trips",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),

                   SizedBox(
                    height: 20,
                  ),

                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 95, 113, 128),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(color: Color(0xFF5F7180),spreadRadius: 2,blurRadius: 5,offset: Offset(0, 3))
                    ]
                  ),

                  child: Padding(padding: EdgeInsets.all(15),

                    child:  Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                              Text("May 23 13:00 PM",style: TextStyle(color: Colors.white),),
                              Text("May 23 14:30 PM",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("America",style: TextStyle(color: Colors.grey),),
                            Text("- - - ",style: TextStyle(color: Colors.grey),),
                            Icon(Icons.airplanemode_on_outlined,color: Colors.grey,),
                            Text("- - -",style: TextStyle(color: Colors.grey),),
                            Text("Singapore",style: TextStyle(color: Colors.grey),)
                          ],
                        ),  
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 20,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(5))
                              ),
                              child: Padding(padding: EdgeInsets.symmetric(vertical: 1,horizontal: 6),
                                child: Text("Ameriac, Chikago",style: TextStyle(fontSize: 12),),
                              )
                            ),
                            Container(
                              height: 20,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(5))
                              ),
                              child: Padding(padding: EdgeInsets.symmetric(vertical: 1,horizontal: 6),
                                child: Text("Singapore, Hongkong",style: TextStyle(fontSize: 12),),
                              )
                            )
                          ],
                        )
                        
                      ],
                    ),

                    ),              

                ),
                SizedBox(height: 20,),
                Text("Popular Destinations",style: TextStyle(color: Colors.white,fontSize: 20),),

                Container(

                  padding: EdgeInsets.all(10),

                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                        dataFunction("agra.jpg","Delhi","Taj Mahal"),
                        dataFunction("agra.jpg","Delhi","Taj Mahal"),
                        dataFunction("agra.jpg","Delhi","Taj Mahal")
                    
                  ],
                ),
                )
                ],  

            ),

            )
    ),

    bottomNavigationBar: BottomNavigationBar(items: [

        BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "About",icon: Icon(Icons.person)),
        BottomNavigationBarItem(label: "Contact",icon: Icon(Icons.phone)),

    ],
    currentIndex: initialState,

    onTap: (value){

      setState(() {

          initialState = value;

          if(value ==1 )
          {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookflight()));
          } else if(value == 0)
          {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>landing_page()));
          }

      });

    },
    ),

    ); }
}

Widget dataFunction(String image, String dest, String place)
{
    return   Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 100,
                    width: 80,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("${image}",fit: BoxFit.cover,),
                        SizedBox(height: 10,),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("${dest}"),),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("${place}"),),

                      ],
                    )

                );

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: profile(),debugShowCheckedModeBanner: false
    ,));
}
class profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right:520,left: 10 ,top: 10),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Center(child: Text("Profile",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Center(
                  child: CircleAvatar(radius: 60,
                    backgroundImage: AssetImage(
                        "assets/images/d5.jpg"
                    ),
                  ),
                ),
                Positioned(top: 94,
                    left: 290,

                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.teal),))
              ],
            ),
            SizedBox(height: 13,),
            Center(child: Text("Dr.Mesdrew Liyan",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
            SizedBox(height: 5,),
            Center(child: Text("medicine specialist",style: TextStyle(fontSize: 14,color: Colors.grey),)),
            SizedBox(height: 25,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Column(
                    children: [
                      Text("Patient's",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Text("800+",style: TextStyle(color: Colors.teal,fontSize: 12,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 95),
                  child: Column(
                    children: [
                      Text("Experience",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Text("5years+",style: TextStyle(color: Colors.teal,fontSize: 12,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Column(
                    children: [
                      Text("Qualification",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Text("MBBS,MD",style: TextStyle(color: Colors.teal,fontSize: 12,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text("About",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 10),
              child: Text("MBBS, Ph.D., Fellow ,Interntaional College of \nSurgeons.",style: TextStyle(color: Colors.grey)),
            ) ,
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 15),
              child: Text("Ex- Proffessor \& Head of Department Department \nof Neurosurgery Dhaka Medical College \& Hospital.",style: TextStyle(color: Colors.grey)),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 70,right: 70),
              child: Container(
                height: 40,
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(5) ,color: Colors.blue[700],
                ),
                child: Center(
                    child:TextButton(onPressed: (){}, child: Text("MAKE APPOINTMENT",style: TextStyle(color: Colors.white,),),)
                ),
              ),
            )

          ],
        ),
      ),
    );
  }

}
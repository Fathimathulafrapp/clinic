import 'package:carousel_slider/carousel_slider.dart';
import 'package:clinic/dashboard/MyTheme.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: HomePage(),debugShowCheckedModeBanner: false,));
}
class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final imgList =[
    "assets/images/dd1.png",
    "assets/images/dd1.png",
    "assets/images/dd1.png",
    "assets/images/dd1.png",
    "assets/images/dd1.png"
  ];

  final circles =[
    "assets/images/circles.png",
    "assets/images/circles.png",
    "assets/images/circles.png",
    "assets/images/circles.png",
    "assets/images/circles.png",
    "assets/images/circles.png",
    "assets/images/circles.png",
    "assets/images/circles.png",

  ];

  final imList =[
    "assets/images/dctr.png",
    "assets/images/dctr.png",
    "assets/images/dctr.png",
    "assets/images/dctr.png",
    "assets/images/dctr.png"
  ];

  final pics=[

    "assets/images/fever.png",
    "assets/images/headache.png",
    "assets/images/icn2.png",
    "assets/images/hairfall.png",
    // "assets/images/icn7.png",
    "assets/images/icn5.png",
    "assets/images/icn4.png",
    "assets/images/icn3.png",
    "assets/images/icn8.png",

  ];

  final text=[
    "Fever",
    "Head Ache",
    "Food Allergie",
    "Hair Fall",
    "Allergie",
    "Gas Trouble",
    "Stress",
    "ElbowPain"

  ];

  int currentindex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
         Column(
           children: [
             Row(
               children: [
                 IconButton(
                     onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                 Text(
                   "Ma Clinic", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17),)

               ],
             ),

             Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Container(
                   height: 40,
                   decoration: BoxDecoration(border: Border.all(color: MyTheme.searchborder,),borderRadius: BorderRadius.circular(5)),
                   child: TextField(decoration: InputDecoration(
                     prefixIcon: Icon(Icons.search_outlined,size: 30,),
                     labelText: 'Search your Doctor',border: InputBorder.none,

                   ),),
                 )
             )
           ]
         ),
          SizedBox(height: 20,),
          Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1,
                    aspectRatio:2.0,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,

                    autoPlay: false,
                    onPageChanged: (index,reason){
                      setState(() {
                        currentindex=index;
                      });
                    }
                  ),
                  items: imList
                      .map((item) => Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(fit:BoxFit.fill , image: AssetImage(item),

                      ),
                    ),

                  ))
                      .toList(),
                ),
              )),
          DotsIndicator(
            dotsCount:imList.length,
            position: currentindex,
            decorator: DotsDecorator(
                activeColor: Colors.blue
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 15),
            child: Row(
              children: [
                Text("Upcoming Shedule",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                SizedBox(width: 4,),
                Container(
                  height: 20,
                  decoration: BoxDecoration(color: Colors.red,shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(3.5),
                    child: Center(child: Text("1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: MyTheme.upcomingcolor),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: CircleAvatar(backgroundImage: AssetImage("assets/images/doctor.png"),radius: 30,),
                      ),
                      Text("Dr.Natasha Lunn\nDermatology Consultantion",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 5),
                        child: CircleAvatar(backgroundImage: AssetImage("assets/images/greycircle.png"),
                        child: Image(image: AssetImage("assets/images/videocall.png"),)),
                      )

                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      height: 50,

                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: MyTheme.green),
                      child: Center(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Image(image: AssetImage("assets/images/calender.png")),
                            ),
                            SizedBox(width: 5,),
                            Text("Tuesday,15 August",style: TextStyle(color: Colors.white,fontSize: 16),),
                            SizedBox(width: 40,),
                            Image(image: AssetImage("assets/images/timer.png")),
                            SizedBox(width: 5,),
                            Text("18.00 - 19.00",style: TextStyle(color: Colors.white,fontSize: 16),),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 15),
            child: Text("Our Specialities",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 15,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13,right: 8),
                  child: Container(
                    height: 110,
                    width: 85,
                    decoration: BoxDecoration(color:MyTheme.lightRed,borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Image( image:  AssetImage("assets/images/cardiologi.png"),height: 50,width: 50,),
                            Text("Cardiologi",style: TextStyle(color: MyTheme.textCardio),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 110,
                    width: 85,
                    decoration: BoxDecoration(color:MyTheme.lightBlue,borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Image( image:  AssetImage("assets/images/phamacy.png"),height: 45,width: 45,),
                            Text("Pharmacy",style: TextStyle(color: MyTheme.textPharmacy),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 110,
                    width: 85,
                    decoration: BoxDecoration(color:MyTheme.lightOrange,borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Image( image:  AssetImage("assets/images/dermatology.png"),height: 50,width: 50,),
                            Text("Dermatology",style: TextStyle(color: MyTheme.textDerm),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 110,
                    width: 85,
                    decoration: BoxDecoration(color:MyTheme.lightPurple,borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Image( image:  AssetImage("assets/images/neurologi.png"),height: 40,width: 40,),
                            Text("Neurology",style: TextStyle(color: MyTheme.textNeuro),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 110,
                    width: 85,
                    decoration: BoxDecoration(color:MyTheme.lightGreen,borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Image( image:  AssetImage("assets/images/optometry.png"),height: 50,width: 50,),
                            Text("Optometry",style: TextStyle(color:MyTheme.textOptom),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),

          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Top Doctor",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                TextButton(onPressed: (){}, child: Text("View all",style: TextStyle(color: Colors.black),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    child: Container(
                      height: 210,
                      width: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image(image: AssetImage("assets/images/d1.jpg")),
                            ),
                          ),
                          Center(child: Text("Dr.Bruce Banner",style: TextStyle(fontWeight: FontWeight.bold),)),
                          Text("psychiatrist",style: TextStyle(fontSize: 12,color: Colors.grey[300]),),
                          Padding(
                            padding: const EdgeInsets.only(left: 25,top: 3),
                            child: Row(children: [
                              Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                              Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                              Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                              Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                              Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                            ],),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 25,
                              color: MyTheme.buttonColor,
                              child: Center(
                                child: Text("Make Appoinment",style: TextStyle(color: Colors.white,fontSize: 12),),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 6,),
                  Card(
                    child: Container(
                      height: 210,
                      width: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image(image: AssetImage("assets/images/d2.jpg")),
                            ),
                          ),
                          Center(child: Text("Dr.Rasiya",style: TextStyle(fontWeight: FontWeight.bold),)),
                          Text("psychiatrist",style: TextStyle(fontSize: 12,color: Colors.grey[300]),),
                          Padding(
                            padding: const EdgeInsets.only(left: 25,top: 3),
                            child: Row(children: [
                              Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                              Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                              Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                              Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                              Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                            ],),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 25,
                              color: MyTheme.buttonColor,
                              child: Center(
                                child: Text("Make Appoinment",style: TextStyle(color: Colors.white,fontSize: 12),),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 6,),
                  Card(
                    child: Container(
                      height: 210,
                      width: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image(image: AssetImage("assets/images/d3.jpg"),height: 85,),
                            ),
                          ),
                          Center(child: Text("Dr.Devika",style: TextStyle(fontWeight: FontWeight.bold),)),
                          Text("psychiatrist",style: TextStyle(fontSize: 12,color: Colors.grey[300]),),
                          Padding(
                            padding: const EdgeInsets.only(left: 25,top: 3),
                            child: Row(children: [
                              Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                              Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                              Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                              Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                              Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                            ],),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 25,
                              color: MyTheme.buttonColor,
                              child: Center(
                                child: Text("Make Appoinment",style: TextStyle(color: Colors.white,fontSize: 12),),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("Know the Root Cause",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          ),
            Padding(
            padding: const EdgeInsets.only(left: 4,right: 4),
            child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 8,
            childAspectRatio: 1.2
            ),
            itemCount: circles.length,
            itemBuilder: (context, index) {
            return Center(
              child: Stack(
              children: [
                Container(
                  height: 100,
                  child: Image(image: AssetImage(circles[index]),
                    fit: BoxFit.fitHeight,),
                ),

              Positioned(
                left: 30,
              width: 28,
              height: 60,
              child: Center(child: Image.asset(pics[index]))),
            Positioned(
          height: 20,
              left: 17,
              top: 55,
            child: Text(text[index],style: TextStyle(fontSize: 10,color: MyTheme.darkblue),)
    ),
              ],
              ),
            );
            }),
            ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Card(
                          child: Container(
                            height: 210,
                            width: 150,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    child: Image(image: AssetImage("assets/images/d1.jpg")),
                                  ),
                                ),
                                Center(child: Text("Dr.Bruce Banner",style: TextStyle(fontWeight: FontWeight.bold),)),
                                Text("psychiatrist",style: TextStyle(fontSize: 12,color: Colors.grey[300]),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25,top: 3),
                                  child: Row(children: [
                                    Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                                    Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                                    Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                                    Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                                    Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 25,
                                    color: MyTheme.buttonColor,
                                    child: Center(
                                      child: Text("Make Appoinment",style: TextStyle(color: Colors.white,fontSize: 12),),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 6,),
                        Card(
                          child: Container(
                            height: 210,
                            width: 150,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    child: Image(image: AssetImage("assets/images/d2.jpg")),
                                  ),
                                ),
                                Center(child: Text("Dr.Rasiya",style: TextStyle(fontWeight: FontWeight.bold),)),
                                Text("psychiatrist",style: TextStyle(fontSize: 12,color: Colors.grey[300]),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25,top: 3),
                                  child: Row(children: [
                                    Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                                    Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                                    Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                                    Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                                    Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 25,
                                    color: MyTheme.buttonColor,
                                    child: Center(
                                      child: Text("Make Appoinment",style: TextStyle(color: Colors.white,fontSize: 12),),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 6,),
                        Card(
                          child: Container(
                            height: 210,
                            width: 150,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    child: Image(image: AssetImage("assets/images/d3.jpg"),height: 85,),
                                  ),
                                ),
                                Center(child: Text("Dr.Devika",style: TextStyle(fontWeight: FontWeight.bold),)),
                                Text("psychiatrist",style: TextStyle(fontSize: 12,color: Colors.grey[300]),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25,top: 3),
                                  child: Row(children: [
                                    Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                                    Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                                    Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                                    Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                                    Image(image: AssetImage("assets/images/rate.png"),height: 20,width: 20,),
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 25,
                                    color: MyTheme.buttonColor,
                                    child: Center(
                                      child: Text("Make Appoinment",style: TextStyle(color: Colors.white,fontSize: 12),),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          viewportFraction: 1,
                          aspectRatio: 1.0,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                          autoPlay: false,
                          onPageChanged: (index,reason){
                            setState(() {
                              currentindex=index;
                            });
                          }
                        ),
                        items: imgList
                            .map((item) => Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(fit:BoxFit.fill , image: AssetImage(item),

                            ),
                          ),

                        ))
                            .toList(),
                      ),
                    ),
                    DotsIndicator(
                      dotsCount: imgList.length,
                      position: currentindex,
                      decorator: DotsDecorator(
                          activeColor: Colors.blue
                      ),
                    ),
          ],
                ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/recipedetails.dart';

import 'const.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",style: GoogleFonts.abel(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white
        ),),
        backgroundColor: Colors.redAccent,
      ),
      body: GridView.count(
          crossAxisCount: 2,
        mainAxisSpacing:10,
        crossAxisSpacing: 10,
        children: [
          GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Details(Name: rec1, Image: img1, Recdetail: des1,)));
            }
            ,
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.fastfood,size: 100,color: Colors.white,),
                      SizedBox(height: 10,),
                      Text(rec1,style: TextStyle(
                        color: Colors.white,fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Details(Name:rec2, Image:img2, Recdetail:des2,)));
            }
            ,
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.rice_bowl,size: 100,color: Colors.white,),
                      SizedBox(height: 10,),
                      Text(rec2,style: TextStyle(
                          color: Colors.white,fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Details(Name:rec3, Image:img3, Recdetail:des3,)));
            }
            ,
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cake_sharp,size: 100,color: Colors.white,),
                      SizedBox(height: 10,),
                      Text(rec3,style: TextStyle(
                          color: Colors.white,fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Details(Name:img4, Image:img4, Recdetail:img4,)));
            }
            ,
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.local_pizza,size: 100,color: Colors.white,),
                      SizedBox(height: 10,),
                      Text(rec4,style: TextStyle(
                          color: Colors.white,fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

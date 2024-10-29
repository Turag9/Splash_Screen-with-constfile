import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Details extends StatefulWidget {
  final String Name;
  final String Image;
  final String Recdetail;
  const Details({super.key,required this.Name,required this.Image,required this.Recdetail});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text("Recipe Detail",style: GoogleFonts.abel(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/images/${widget.Image}",
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height/3,
                fit: BoxFit.fitWidth,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: MediaQuery.sizeOf(context).width,
                color: Colors.redAccent,
                child: Center(
                  child: Text(widget.Name,style: GoogleFonts.abel(
                      color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                  )),
                ),
              )
            ],
          ),
          Text(widget.Recdetail,style: GoogleFonts.abel(
            color: Colors.black,fontWeight: FontWeight.bold,
            fontSize: 15
          ),),
        ],
      ),
    );
  }
}

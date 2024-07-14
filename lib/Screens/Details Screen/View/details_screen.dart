import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solar_system_app/Utils/global_list.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Image.asset(
              "Assets/Img/bg.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width / 20,
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () => Navigator.of(context).pop(),
                        child: Container(
                          height: height / 15,
                          width: width / 7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white10,
                          ),
                          child: const Icon(
                            Icons.arrow_back_outlined,
                            size: 30,
                            color: Color(0xff008DCA),
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      Text(
                        "overview",
                        style: GoogleFonts.jetBrainsMono(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(
                        flex: 3,
                      )
                    ],
                  ),
                  SizedBox(height: height/20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Distance from\nearth",
                        style: GoogleFonts.jetBrainsMono(
                          color: const Color(0xff008DCA),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "${planetList[liveIndex]["distanceFromEarth"]}km(million)",
                        style: GoogleFonts.jetBrainsMono(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: height/20,),
                  Hero(
                    tag: "planet",
                    child: SizedBox(
                      height: height / 2.5,
                      width: width,
                      child: Image.asset(
                        planetList[liveIndex]['img'],
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: height/20,),
                  Text(
                    planetList[liveIndex]["name"],
                    style: GoogleFonts.jetBrainsMono(
                        fontSize: 45, color: Colors.white),
                  ),
                  SizedBox(height: height/20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Size\n",
                            style: GoogleFonts.jetBrainsMono(
                              color: const Color(0xff008DCA),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "d = ${planetList[liveIndex]["size"]}km",
                            style: GoogleFonts.jetBrainsMono(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "distance from sun\n",
                            style: GoogleFonts.jetBrainsMono(
                              color: const Color(0xff008DCA),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "${planetList[liveIndex]["distanceFromSun"]}km(million)",
                            style: GoogleFonts.jetBrainsMono(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

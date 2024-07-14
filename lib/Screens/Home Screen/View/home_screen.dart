import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solar_system_app/Screens/Details%20Screen/View/details_screen.dart';
import 'package:solar_system_app/Utils/global_list.dart';

import 'Components/custom_app_bar.dart';
import 'Components/planet_card.dart';
import 'Components/welcome_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 18, right: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                homeAppBar(height, width),
                SizedBox(
                  height: height / 30,
                ),
                welcomeText(),
                SizedBox(
                  height: height / 40,
                ),
                Expanded(
                  child: PageView.builder(
                    itemCount: planetList.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          liveIndex = index;
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const DetailsScreen(),
                          ));
                        });
                      },
                      child: planetCard(
                        height,
                        planetList[index]['sp'],
                        planetList[index]['name'],
                        planetList[index]['img'],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Astronomical NEWS",
                      style: GoogleFonts.jetBrainsMono(
                          fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      "see all",
                      style: GoogleFonts.jetBrainsMono(
                          fontSize: 15, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 90,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: height / 6,
                    width: width / 1.1,
                    decoration: BoxDecoration(
                      color: const Color(0xff008DCA).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "How humans pick\nout constellations",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              Icon(
                                Icons.navigate_next,
                                size: 50,
                                color: Color(0xff008DCA),
                              )
                            ],
                          ),
                          Text(
                            "Around the world, people have long gazed up at the stars and found meaning in t them. The Renaissance polymath Nicolaus Copernicusonce wrote...",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

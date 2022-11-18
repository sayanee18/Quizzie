import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/src/rendering/box.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double heightOfDevice = MediaQuery.of(context).size.height;
    double widthOfDevice = MediaQuery.of(context).size.width;

    double h(double height) {
      return heightOfDevice * height;
    }

    double w(double width) {
      return widthOfDevice * width;
    }

    List<String> heading = [
      "Movies",
      "Literature",
      "Music",
      "Games",
      "Math",
      "Science",
      "Sports",
    ];
    List<String> content = [
      "KNow your movies",
      "Some great laureates",
      "Music to your soul",
      "Bring in your best game",
      "Showcase your math skills here",
      "Believe if science is the future?",
      "Now show your ground skills here",
    ];
    List<String> image = [
      "assets/Movies_icon.svg",
      "assets/Literature_icon.svg",
      "assets/Music_icon.svg",
      "assets/Games_icon.svg",
      "assets/Math_icon.svg",
      "assets/Science_icon.svg",
      "assets/Sports_icon.svg",
    ];

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: w(0.05),
                    ),
                    child: Text(
                      "Quizzie",
                      style: GoogleFonts.sniglet(
                        fontSize: 38,
                        color: HexColor("FC8EAC"),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: w(0.32),
                    ),
                    child: SizedBox(
                      height: h(0.15),
                      width: w(0.15),
                      child: IconButton(
                        icon: SvgPicture.asset("assets/Podium.svg"),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              // Padding(
              //   padding: EdgeInsets.only(
              //     left: w(0.05),
              //   ),
              //   child: Text(
              //     "Hi there!",
              //     style: GoogleFonts.asap(
              //       fontSize: 28,
              //       color: HexColor("434343"),
              //     ),
              //   ),
              // ),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: w(0.05),
                        ),
                        child: Text(
                          "Hi there!",
                          style: GoogleFonts.asap(
                            fontSize: 28,
                            color: HexColor("434343"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: h(0.068),
                      ),
                      child: Container(
                        height: h(0.18),
                        width: w(0.9),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: HexColor("FECCD3"),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(w(0.1), h(0.11), 0, 0),
                    child: Text(
                      "Username",
                      style: GoogleFonts.asap(
                        fontSize: 25,
                        color: HexColor("434343"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: h(0.16),
                      left: w(0.1),
                    ),
                    child: SizedBox(
                      width: w(0.45),
                      height: h(0.07),
                      child: TextFormField(
                        onChanged: (String) {},
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          hintText: "hello",
                          hintStyle: GoogleFonts.asap(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: w(0.6),
                    ),
                    child: SvgPicture.asset(
                      "assets/Welcome_character.svg",
                      height: h(0.25),
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: w(0.05),
                  top: h(0.05),
                  bottom: h(0.01),
                ),
                child: Text(
                  "Choose your fav category",
                  style: GoogleFonts.asap(
                    fontSize: 28,
                    color: HexColor("434343"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: w(0.05),
                  vertical: h(0.0125),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Container(
                          height: h(0.193),
                          width: w(0.9),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                HexColor("FC8EAC"),
                                HexColor("E0DFDF"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: w(0.5),
                          top: h(0.025),
                        ),
                        child: SvgPicture.asset("assets/Celebrity_icon2.svg"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: w(0.05),
                          top: h(0.03),
                        ),
                        child: Text(
                          "Celebrity",
                          style: GoogleFonts.asap(
                            fontSize: 32,
                            color: HexColor("E44D73"),
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: w(0.05),
                          top: h(0.08),
                        ),
                        child: SizedBox(
                          width: w(0.45),
                          child: Text(
                            "Do you know your celebs? Well, prove it now!",
                            style: GoogleFonts.asap(
                              fontSize: 20,
                              color: HexColor("434343"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: heading.length * h(0.22),
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: heading.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: w(0.05),
                          vertical: h(0.0125),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Stack(
                            children: [
                              Opacity(
                                opacity: 0.2,
                                child: Container(
                                  height: h(0.193),
                                  width: w(0.9),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        HexColor("FC8EAC"),
                                        HexColor("E0DFDF"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: w(0.5),
                                ),
                                child: SvgPicture.asset('${image[index]}'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: w(0.05),
                                  top: h(0.03),
                                ),
                                child: Text(
                                  heading[index],
                                  style: GoogleFonts.asap(
                                    fontSize: 32,
                                    color: HexColor("E44D73"),
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: w(0.05),
                                  top: h(0.08),
                                ),
                                child: SizedBox(
                                  width: w(0.45),
                                  child: Text(
                                    content[index],
                                    style: GoogleFonts.asap(
                                      fontSize: 20,
                                      color: HexColor("434343"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

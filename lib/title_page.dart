import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:bordered_text/bordered_text.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({Key? key}) : super(key: key);

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

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: h(1),
              width: w(1),
              child:
                  SvgPicture.asset("assets/Background.svg", fit: BoxFit.cover),
            ),
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: h(0.1),
                    ),
                    child: Text(
                      "Quizzie",
                      style: GoogleFonts.sniglet(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: HexColor("FC8EAC"),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: h(0.05),
                    ),
                    child: SvgPicture.asset("assets/Title_page_graphic.svg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: h(0.02),
                  ),
                  child: Center(
                    child: BorderedText(
                      strokeWidth: 10.0,
                      strokeColor: Colors.white,
                      strokeJoin: StrokeJoin.round,
                      child: Text(
                        "Ready to get",
                        style: GoogleFonts.asap(
                          fontSize: 32,
                          color: HexColor("FC8EAC"),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: BorderedText(
                    strokeWidth: 10.0,
                    strokeColor: Colors.white,
                    strokeJoin: StrokeJoin.round,
                    child: Text(
                      "your brain fried?",
                      style: GoogleFonts.asap(
                        fontSize: 32,
                        color: HexColor("FC8EAC"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: h(0.04),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: SizedBox(
                      width: w(0.5),
                      height: h(0.08),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: HexColor("FC8EAC"),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.asap(fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

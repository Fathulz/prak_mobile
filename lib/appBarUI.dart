// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarUI extends StatelessWidget {
  const AppBarUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      elevation: 0,
      backgroundColor: Colors.white,
      title: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Halo, Miftahul",
              style: GoogleFonts.poppins(
                  color: Colors.green[300],
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Container(
              child: Text(
                "Mau masak apa hari ini?",
                style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
      actions: [
        Container(
          width: 80,
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1.0, color: Colors.green.shade300)),
          margin: EdgeInsets.only(right: 15, top: 10),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/user.jpg"),
          ),
        ),
      ],
    );
  }
  // Widget build(BuildContext context) {
  //   return Container(
  //     child: Text("Sipp"),
  //   );
  // }
}

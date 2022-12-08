import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomScrollWidget extends StatelessWidget {
  const CustomScrollWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          customContainer(
              "assets/image_1.png", "Likes", BoxFit.contain, false, true),
          customContainer(
              "assets/image_2.png", "Tony", BoxFit.contain, true, false),
          customContainer(
              "assets/image_3.png", "James", BoxFit.contain, true, false),
          customContainer(
              "assets/image_4.jpg", "Jord", BoxFit.cover, false, false)
        ],
      ),
    );
  }

  Widget customContainer(
      String imgAddress, String names, fit, isVerified, isFirst) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                width: 90,
                height: 100,
                imgAddress,
                fit: fit,
              ),
            ),
            isFirst
                ? Positioned(
                    left: 10,
                    right: 10,
                    top: 20,
                    child: Column(
                      children: [
                        const Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.white,
                          size: 28,
                        ),
                        Text(
                          "20",
                          style: GoogleFonts.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  )
                : Container(),
            Positioned(
              left: 10,
              right: 10,
              bottom: 0,
              child: Container(
                height: 20,
                width: isVerified ? 70 : 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      names,
                      style: GoogleFonts.nunito(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    isVerified
                        ? const SizedBox(
                            width: 5,
                          )
                        : Container(),
                    isVerified
                        ? const Icon(
                            Icons.verified,
                            color: Colors.blue,
                            size: 15,
                          )
                        : Container()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

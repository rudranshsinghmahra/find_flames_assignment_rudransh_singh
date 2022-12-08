import 'package:find_flames_assignment_rudransh_singh/widgets/chat_tiles_widget.dart';
import 'package:find_flames_assignment_rudransh_singh/widgets/scroll_widget_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff6fa),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffff6fa),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipOval(
              child: Image.asset(
                "assets/app_bar_image.png",
              ),
            ),
            Text(
              "Puzzels",
              style: GoogleFonts.nunito(
                  color: const Color(0xFFFF5F8F), fontSize: 20),
            ),
            SvgPicture.asset("assets/app_bar_vector.svg")
          ],
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0, top: 25),
            child: CustomScrollWidget(),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 30.0, left: 20, right: 20),
                      child: ChatTileWidget(),
                    ),
                  ),
                ),
                Positioned(
                  left: 28,
                  right: 28,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xff999999),
                            spreadRadius: 0.5,
                            blurRadius: 2),
                      ],
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25),
                      child: TextFormField(
                        cursorHeight: 0,
                        cursorWidth: 0,
                        cursorColor: Colors.transparent,
                        decoration: InputDecoration(
                          icon: SvgPicture.asset(
                            "assets/search_vector.svg",
                          ),
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: GoogleFonts.nunito(
                            fontSize: 18,
                            color: const Color(0xff999999),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/home_icon.svg"), label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/web_search_icon.svg"), label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/calendar_icon.svg"), label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/messages_icon.svg"), label: ""),
        ],
      ),
    );
  }
}

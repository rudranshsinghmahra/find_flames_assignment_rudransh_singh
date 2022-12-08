import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatTileWidget extends StatelessWidget {
  const ChatTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        customChatTiles(
          context: context,
          isVerified: true,
          message: "Hii!",
          name: "Jordon",
          noOfMessages: "1",
          time: "13.10",
          imgAddress: "assets/chat_person_1.png",
          isMessageUnRead: true,
          isOnline: true,
          isTyping: false,
        ),
        Divider(),
        customChatTiles(
          context: context,
          isVerified: true,
          message: "Hii!",
          name: "Tim",
          noOfMessages: "",
          time: "13.10",
          imgAddress: "assets/chat_person_2.png",
          isMessageUnRead: false,
          isOnline: false,
          isTyping: false,
        ),
        Divider(),
        customChatTiles(
          context: context,
          isVerified: false,
          message: "",
          name: "James",
          noOfMessages: "9+",
          time: "13.10",
          imgAddress: "assets/chat_person_3.png",
          isMessageUnRead: true,
          isOnline: true,
          isTyping: true,
        ),
      ],
    );
  }

  Widget customChatTiles(
      {context,
      name,
      message,
      isVerified,
      time,
      noOfMessages,
      imgAddress,
      isTyping,
      isOnline,
      isMessageUnRead}) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          ClipOval(
            child: Container(
              height: 80,
              width: 80,
              color: Colors.white,
              child: Image.asset(
                imgAddress,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            name,
                            style: GoogleFonts.nunito(
                                fontSize: 20,
                                color: isOnline
                                    ? Colors.black
                                    : Color(0xFF818181)),
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
                                  size: 18,
                                )
                              : Container()
                        ],
                      ),
                      Text(
                        time,
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: isOnline ? Colors.black : Color(0xFF818181),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        isTyping ? "Typing..." : message,
                        style: isTyping
                            ? GoogleFonts.nunito(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFF5F8F))
                            : GoogleFonts.nunito(
                                fontSize: 16,
                                color: isOnline
                                    ? Colors.black
                                    : Color(0xFF818181)),
                      ),
                      isMessageUnRead
                          ? ClipOval(
                              child: Container(
                                width: 20,
                                height: 20,
                                color: const Color(0xFFFF5F8F),
                                child: Center(
                                  child: Text(
                                    noOfMessages,
                                    style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

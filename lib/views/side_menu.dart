import 'package:flutter/material.dart';
import 'package:gaming_app_ui/constants/colors.dart';

class SideMenuScreen extends StatefulWidget {
  const SideMenuScreen({super.key});

  @override
  State<SideMenuScreen> createState() => _SideMenuScreenState();
}

class _SideMenuScreenState extends State<SideMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 68, left: 60, right: 44),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'images/close.png',
                  height: 26,
                  width: 26,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Badge(
                    backgroundColor: Color(0xff08F403),
                    smallSize: 12,
                    child: CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: themeColor,
                      child: ClipRRect(
                        child: CircleAvatar(
                          radius: 23,
                          backgroundImage: AssetImage(
                            'images/avater.jpg',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Stone Stellar',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins Bold',
                          color: themeColor),
                    ),
                    Row(
                      children: [
                        Center(
                          child: Image.asset(
                            'images/crown.png',
                            height: 10,
                            width: 10,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Gold Player',
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Poppins Regular',
                            color: Color(0xffF4C73E),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Online',
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Poppins Regular',
                        color: Color(0xff36C703),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ReuseableRow(
              rowIcon: 'images/profile.png',
              title: 'My Profile',
            ),
            ReuseableRow(
              rowIcon: 'images/schedule.png',
              title: 'Schedule',
            ),
            ReuseableRow(
              rowIcon: 'images/statistics.png',
              title: 'Statistics',
            ),
            ReuseableRow(
              rowIcon: 'images/location_pin.png',
              title: 'Discover Combat',
            ),
            ReuseableRow(
              rowIcon: 'images/chat.png',
              title: 'Chat',
            ),
            ReuseableRow(
              rowIcon: 'images/language.png',
              title: 'Change Language',
            ),
            ReuseableRow(
              rowIcon: 'images/skin.png',
              title: 'Change App Skin',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 90),
              child: ReuseableRow(
                rowIcon: 'images/logout.png',
                title: 'Logout',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReuseableRow extends StatelessWidget {
  String rowIcon;
  String title;
  ReuseableRow({super.key, required this.rowIcon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 34),
      child: Row(
        children: [
          Image.asset(
            rowIcon,
            height: 16,
            width: 14,
            color: themeColor,
          ),
          SizedBox(
            width: 24,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 16, fontFamily: 'Poppins Regular', color: blackColor),
          ),
        ],
      ),
    );
  }
}

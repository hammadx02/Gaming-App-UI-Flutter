import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:gaming_app_ui/constants/colors.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Image.asset(
            'images/menu.png',
            height: 3,
            width: 3,
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: themeColor,
            child: ClipRRect(
              child: CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage(
                  'images/avater.jpg',
                ),
              ),
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 27.0),
              child: Text(
                'Hammad Ali',
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Poppins Regular',
                  color: blackColor,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                ReuseableContainer(
                  title: 'Schedule',
                  description:
                      'Easily schedule event/games\nthen find like minded players for\nbattle. You up for it?',
                  image: 'images/lc1.png',
                  imageHight: 107,
                  imageWidth: 112,
                  containerPadding: EdgeInsets.only(bottom: 19.0, left: 163),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ReuseableContainer(
                    title: 'Statistics',
                    description:
                        'All data from previous and\nupcoming games can be found here ',
                    image: 'images/lc2.png',
                    imageHight: 119,
                    imageWidth: 125,
                    containerPadding: EdgeInsets.only(bottom: 19.0, left: 150),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ReuseableContainer(
                    title: 'Discover  Combats',
                    description:
                        'Find out what’s new and compete\namong players with new\nchallenges and earn cash with\ngame points ',
                    image: 'images/lc3.png',
                    imageHight: 114,
                    imageWidth: 202,
                    containerPadding: EdgeInsets.only(bottom: 19.0, left: 80),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ReuseableContainer(
                    title: 'Message Players',
                    description:
                        'Found the profile of a player\nthat interests you? Start a\nconversation',
                    image: 'images/lc4.png',
                    imageHight: 103,
                    imageWidth: 131,
                    containerPadding: EdgeInsets.only(bottom: 19.0, left: 155),
                  ),
                )
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixed,
        shadowColor: Colors.transparent,
        color: Color(0xffDADADA),
        activeColor: Color(0xffFFFFFF),
        backgroundColor: themeColor,
        height: 75,
        cornerRadius: 5,
        items: [
          TabItem(
            fontFamily: 'Poppins Regular',
            icon: ImageIcon(
              AssetImage(
                'images/statistics.png',
              ),
              color: Color(0xffDADADA),
              size: 30,
            ),
            title: 'Statistics',
          ),
          TabItem(
            fontFamily: 'Poppins Regular',
            icon: ImageIcon(
              AssetImage(
                'images/location_pin.png',
              ),
              color: Color(0xffDADADA),
              size: 30,
            ),
            title: 'Discover',
          ),
          TabItem(
            icon: ImageIcon(
              AssetImage(
                'images/schedule.png',
              ),
              color: Color(0xffFFFFFF),
              size: 56,
            ),
          ),
          TabItem(
            fontFamily: 'Poppins Regular',
            icon: ImageIcon(
              AssetImage(
                'images/chat.png',
              ),
              color: Color(0xffDADADA),
              size: 30,
            ),
            title: 'Chat',
          ),
          TabItem(
            fontFamily: 'Poppins Regular',
            icon: ImageIcon(
              AssetImage(
                'images/profile.png',
              ),
              color: Color(0xffDADADA),
              size: 30,
            ),
            title: 'Profile',
          ),
        ],
      ),
    );
  }
}

class ReuseableContainer extends StatelessWidget {
  final String title, description, image;
  final imageHight, imageWidth, containerPadding;

  const ReuseableContainer({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.imageHight,
    required this.imageWidth,
    this.containerPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 169,
      decoration: ShapeDecoration(
        gradient: mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Stack(
              children: [
                Padding(
                  padding: containerPadding,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      children: [
                        Container(
                          height: imageHight,
                          width: imageWidth,
                          child: Image.asset(
                            image,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 10),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins Bold',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Poppins Regular',
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

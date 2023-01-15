// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:animated_text/animated_text.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/const.dart';
import 'package:project/app_layout.dart';
import 'package:project/screen_web/screen_about.dart';
import 'package:project/screen_web/screen_contact_us.dart';
import 'package:project/screen_web/screen_services.dart';

class HomeWebScreen extends StatefulWidget {
  const HomeWebScreen({super.key});

  @override
  State<HomeWebScreen> createState() => _HomeWebScreenState();
}

bool? ho = false;
bool? home = true;
bool? service = false;
bool? about = false;
bool? contactUs = false;

class _HomeWebScreenState extends State<HomeWebScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              height: AppLayout.getHeight(45),
              color: const Color.fromARGB(255, 5, 31, 53),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    ContactInfoTop(
                        hover: false,
                        content:
                            'Eastern Province Jubail, Kingdom Of Saudi Arabia',
                        icon: Icons.location_on_sharp),
                    SizedBox(width: AppLayout.getWidth(25)),
                    ContactInfoTop(
                      content: '+966 53 299 5843',
                      icon: Icons.phone,
                      hover: false,
                    ),
                    SizedBox(width: AppLayout.getWidth(25)),
                    ContactInfoTop(
                        hover: false,
                        content: 'admin@shieldsensorpwas.com',
                        icon: Icons.email_outlined),
                    SizedBox(width: AppLayout.getWidth(10)),
                  ],
                ),
              ),
            ),
            Column(
              children: [
//--------------------top info-------------

                Container(
                  width: double.infinity,
                  height: AppLayout.getHeight(600),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.8), BlendMode.dstATop),
                        image: const AssetImage('images/ima.png'),
                        opacity: 0.9,
                        fit: BoxFit.fill),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
/////////------------------Menu Items-------------------------//////
                      SizedBox(
                        height: 100,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              onHover: (value) {
                                setState(() {
                                  ho = value;
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                      width: ho == true ? 70 : 65,
                                      height: ho == true ? 85 : 80,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(1)),
                                      child: Image(
                                        image: AssetImage('images/lg.png'),
                                        fit: BoxFit.fill,
                                      )),
                                  Text(
                                    'Shield',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        // color: Colors.blue,
                                        foreground: Paint()
                                          ..shader = LinearGradient(
                                            colors: <Color>[
                                              Colors.pinkAccent,
                                              Colors.deepPurpleAccent,
                                              Colors.red
                                              //add more color here.
                                            ],
                                          ).createShader(Rect.fromLTWH(
                                              0.0, 0.0, 200.0, 100.0))),
                                  ),
                                  Text(
                                    'Sensor',
                                    style: TextStyle(
                                        fontSize: 25,
                                        // color: Colors.orange,
                                        foreground: Paint()
                                          ..shader = const LinearGradient(
                                            colors: <Color>[
                                              Color.fromARGB(255, 140, 0, 255),
                                              Color.fromARGB(255, 226, 109, 13),
                                              Color.fromARGB(255, 54, 98, 244)
                                              //add more color here.
                                            ],
                                          ).createShader(Rect.fromLTWH(
                                              0.0, 0.0, 200.0, 100.0))),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            MenuButton(
                              hover: false,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => HomeWebScreen(),
                                ));
                                setState(() {
                                  home = true;
                                  service = false;
                                  about = false;
                                  contactUs = false;
                                });
                              },
                              color: home == true ? Colors.pink : Colors.white,
                              name: 'HOME',
                            ),
                            spaceNormalW,
                            MenuButton(
                              hover: false,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => WebServicesScreen(),
                                ));
                                setState(() {
                                  home = false;
                                  service = true;
                                  about = false;
                                  contactUs = false;
                                });
                              },
                              color:
                                  service == true ? Colors.pink : Colors.white,
                              name: 'SERVICES',
                            ),
                            spaceNormalW,
                            MenuButton(
                              hover: false,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => WebAboutScreen(),
                                ));
                                setState(() {
                                  home = false;
                                  service = false;
                                  about = true;
                                  contactUs = false;
                                });
                              },
                              color: about == true ? Colors.pink : Colors.white,
                              name: 'ABOUT US',
                            ),
                            spaceNormalW,
                            MenuButton(
                              hover: false,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => WebContactUs(),
                                ));
                                setState(() {
                                  home = false;
                                  service = false;
                                  about = false;
                                  contactUs = true;
                                });
                              },
                              color: contactUs == true
                                  ? Colors.pink
                                  : Colors.white,
                              name: 'CONTACT US',
                            ),
                            spaceNormalW,
                            spaceNormalW,
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Color.fromARGB(71, 255, 255, 255),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 300,
                        width: double.infinity,
                        // color: Colors.amber,
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 300,
                                    child: SvgPicture.asset(
                                      'images/left_arrow.svg',
                                      width: 70,
                                      height: 70,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  ),
                                  // Spacer(),
                                  const AnimatedTextWidget(),
                                  // AnimatedTextWidget(),
                                  // Spacer(),
                                  SizedBox(
                                    height: 300,
                                    child: SvgPicture.asset(
                                      'images/right_arrow.svg',
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      width: 70,
                                      height: 70,
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 230, 226, 225)),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 5, 7, 97)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text('READ MORE'),
                              ),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 230, 226, 225)),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 50, 50, 56)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text('CONTACT US'),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              // height: 600,
              // width: double.infinity,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('Our Services',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        ServicesWidget(
                          size: size,
                          image: 'images/proxy.png',
                          headText: 'Proximity Warning & Alert Systems',
                          content:
                              'It is reliable radar detection system with advanced microwave technology,applied for heavy duty equipment and commercial vehicles',
                          hover: false,
                        ),
                        const Spacer(),
                        ServicesWidget(
                            size: size,
                            hover: false,
                            image: 'images/cameraa.png',
                            headText:
                                'PWAS Camera - Proximity Warning and Alert Systems',
                            content:
                                'PWAS Camera system Proximity Warning System Aramco Approved. For building and construction equipment, Aramco Standard Pwas Luneum in Saudi Arabia reduces the risk of accidents through an audio and visual alert device to secure blind spots and construction sites with the following benefits..'),
                        const Spacer(),
                        ServicesWidget(
                            size: size,
                            hover: false,
                            image: 'images/sensor.png',
                            headText:
                                'PWAS Sensor - Proximity Warning and Alert Systems',
                            content:
                                'PWAS Sensor System or Proximity Warning and Alert System is a vehicle-to-individual and vehicle-to-vehicle proximity warning technology to prevent accidents between casual personnel and heavy-duty machinery working close to each other on the same work site.'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}

//----ContactInfoTop-----------///
class ContactInfoTop extends StatefulWidget {
  ContactInfoTop({
    Key? key,
    required this.content,
    required this.icon,
    this.hover,
  }) : super(key: key);
  final String content;
  final IconData icon;
  bool? hover;
  @override
  State<ContactInfoTop> createState() => _ContactInfoTopState();
}

class _ContactInfoTopState extends State<ContactInfoTop> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          widget.hover = value;
        });
      },
      child: Row(
        children: [
          SizedBox(width: AppLayout.getWidth(10)),
          Icon(widget.icon,
              color: colorwhite, size: widget.hover == true ? 23 : 20),
          SizedBox(width: AppLayout.getWidth(20)),
          Text(widget.content,
              style: headstyle.copyWith(
                  color: Colors.white,
                  fontSize: widget.hover == true ? 16 : 12)),
        ],
      ),
    );
  }
}

//--------------Animated text------------------//
class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bool animationFinshed = true;
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedTextKit(
            isRepeatingAnimation: true,
            displayFullTextOnTap: false,
            repeatForever: true,
            animatedTexts: [
              FadeAnimatedText(
                // curve:Curve(),
                // cursor: '',
                textAlign: TextAlign.center,
                duration: const Duration(seconds: 3),
                textStyle: TextStyle(
                    fontSize: 50, color: Color.fromARGB(255, 255, 255, 255)),
                // speed: Duration(milliseconds: 100),
                'Proximity Warning & Alert Systems',
              ),
              FadeAnimatedText(
                // curve:Curve(),
                // cursor: '',
                textAlign: TextAlign.center,
                duration: const Duration(seconds: 3),
                textStyle: TextStyle(
                    fontSize: 50, color: Color.fromARGB(255, 255, 255, 255)),
                // speed: Duration(milliseconds: 100),
                'PWAS Camera - Proximity Warning and Alert Systems',
              ),
              FadeAnimatedText(
                  // curve:Curve(),
                  // cursor: '',
                  textAlign: TextAlign.center,
                  duration: const Duration(seconds: 3),
                  textStyle: TextStyle(
                      fontSize: 50, color: Color.fromARGB(255, 255, 255, 255)),
                  // speed: Duration(milliseconds: 100),
                  'PWAS Sensor - Proximity Warning and Alert Systems'),
            ],
          )
        ],
      ),
    );
  }
}

//--------------service widget------------------//
class ServicesWidget extends StatefulWidget {
  ServicesWidget({
    Key? key,
    required this.size,
    required this.image,
    required this.headText,
    required this.content,
    this.hover,
  }) : super(key: key);

  final Size size;
  final String image;
  final String headText;
  final String content;
  bool? hover;

  @override
  State<ServicesWidget> createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.red,
        onHover: (value) {
          setState(() {
            widget.hover = value;
          });
        },
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              widget.hover == true
                  ? BoxShadow(
                      color: Color.fromARGB(255, 226, 10, 93),
                      spreadRadius: 3,
                      blurRadius: 5)
                  : BoxShadow()
            ],
            borderRadius: BorderRadius.circular(5),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          height: AppLayout.getHeight(460),
          width: widget.size.width * .25,
          // duration: Duration(seconds: 2),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(85, 255, 255, 255),
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            opacity: widget.hover == true ? 1 : 0.8,
                            image: AssetImage(widget.image),
                            fit: BoxFit.fill)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 10),
                  child: Text(widget.headText,
                      maxLines: 2,
                      style: TextStyle(
                          fontFamily: 'SofiaSans',
                          color: const Color.fromARGB(255, 10, 4, 1),
                          fontSize: 20)),
                ),
                // spaceNormalH10,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(widget.content,
                      maxLines: 3,
                      textDirection: TextDirection.ltr,

                      // textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.brown)),
                ),
                const Spacer(),
                TextButton(
                    // hoverColor: Colors.black26,
                    onPressed: () {},
                    child: Text('Read more...',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 47, 0, 75))))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//--------------menu ------------------//
class MenuBt extends StatefulWidget {
  MenuBt({
    Key? key,
    required this.name,
    this.hh,
    required this.onPressed,
  }) : super(key: key);
  final String name;
  bool? hh;
  final Function() onPressed;

  State<MenuBt> createState() => _MenuBtState();
}

@override
class _MenuBtState extends State<MenuBt> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            // border: Border(top: BorderSide(color: Colors.grey, width: 5)),
            borderRadius: BorderRadius.circular(2),
            // color: widget.hh == true ? Color.fromARGB(49, 255, 255, 255) : null,
          ),
          child: TextButton(
              onHover: (value) {
                setState(() {
                  widget.hh == true ? widget.hh = false : widget.hh = true;
                });
              },
              onPressed: widget.onPressed,
              child: Text(widget.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: widget.hh == false
                        ? FontWeight.normal
                        : FontWeight.bold,
                    color: widget.hh == false
                        ? Colors.white
                        : Color.fromARGB(255, 226, 10, 93),
                  ))),
        ),
      ],
    );
  }
}

class MenuButton extends StatefulWidget {
  MenuButton(
      {super.key,
      this.hover,
      required this.onPressed,
      required this.color,
      required this.name});
  bool? hover;
  final String name;
  final Color color;
  final Function() onPressed;
  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            // border: Border(
            //     top: BorderSide(
            //         color: Colors.grey, width: 5)),
            borderRadius: BorderRadius.circular(2),
            // color: Color.fromARGB(49, 255, 255, 255),
          ),
          child: TextButton(
            onHover: (value) {
              setState(() {
                widget.hover = value;
              });
            },
            onPressed: widget.onPressed,
            child: Text(
              widget.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: widget.color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project/const.dart';
import 'package:project/app_layout.dart';
// import 'package:project/responsive/wed_screen.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  bool menuClick = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: AppLayout.getWidth(50),
                  width: AppLayout.getWidth(30),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/lg.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  'Shield',
                  style: TextStyle(fontSize: 20, color: Colors.blue[900]),
                ),
                const Text(
                  'Sensor Est.',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 255, 123, 0)),
                )
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              setState(() {
                // print('hellow');
                if (menuClick == false) {
                  menuClick = true;
                } else {
                  menuClick = false;
                }
              });
            },
            icon: menuClick == false
                ? const Icon(Icons.menu)
                : const Icon(Icons.close),
            color: Colors.black,
          ),
          spaceNormalW,
        ],
        bottom: PreferredSize(
          preferredSize: menuClick == true
              ? const Size.fromHeight(180.0)
              : const Size.fromHeight(4.0),
          child: menuClick == true
              ? Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 5.0, bottom: 5, right: 5),
                              child: MenuBt1(name: 'Home'),
                            ),
                            spaceNormalH,
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: MenuBt1(name: 'About'),
                            ),
                            spaceNormalH,
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: MenuBt1(name: 'Services'),
                            ),
                            spaceNormalH,
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: MenuBt1(name: 'Contact'),
                            ),
                            spaceNormalH
                          ]),
                    ),
                  ],
                )
              : Container(height: 0),
        ),
      ),
      body: Column(children: [
        Container(
          height: size.height * .3,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('/images/back.png'), fit: BoxFit.fill),
          ),
        )
      ]),
    ));
  }
}

class MenuBt1 extends StatelessWidget {
  const MenuBt1({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        hoverColor: Colors.amber,
        mouseCursor: MouseCursor.uncontrolled,
        onHover: (value) => true,
        child: Text(name,
            style:
                headstyle.copyWith(color: const Color.fromARGB(255, 0, 0, 0))));
  }
}

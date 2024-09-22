import 'package:flutter/material.dart';
import 'package:flutter_application_7/data/data.dart';
import 'package:flutter_application_7/core/app_extension.dart';
import 'bags_list_screen.dart';

class home extends StatefulWidget {
  home({
    super.key,
  });

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with TickerProviderStateMixin {
  late AnimationController animationcontroller1;

  late Animation<double> animation1;

  late AnimationController animationcontroller2;

  late Animation<double> animation2;

  late AnimationController animationcontroller3;

  late Animation<Offset> animation3;
  @override
  void initState() {
    super.initState();
    animationcontroller1 = AnimationController(vsync: this, duration: const Duration(seconds: 1))
      ..repeat(reverse: true, min: .8);
    animation1 = CurvedAnimation(parent: animationcontroller1, curve: Curves.linear);

    animationcontroller2 =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat(reverse: true, min: .5);
    animation2 = CurvedAnimation(parent: animationcontroller2, curve: Curves.linear);

    animationcontroller3 =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..animateTo(1);
    animation3 = Tween<Offset>(begin: const Offset(2, 0), end: const Offset(0, 0))
        .animate(CurvedAnimation(parent: animationcontroller3, curve: Curves.bounceIn));
  }

  @override
  void dispose() {
    super.dispose();
    animationcontroller1.dispose();
    animationcontroller2.dispose();
    animationcontroller3.dispose();
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(children: [
              Image.asset(
                'images/wallpaper_.jpg',
                fit: BoxFit.cover,
                height: 800,
              ).fadeAnimation(2)
            ]),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            top: 0,
            child: Container(
              padding: const EdgeInsets.only(bottom: 60, left: 15, right: 10),
              color: Colors.black26,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SlideTransition(
                    position: animation3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'Elegant bags ',
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ).fadeAnimation(4),
                    ),
                  ),
                  FadeTransition(
                    opacity: animation2,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'our store provides all kind of bags, you will get the most beautiful and modern bags . ',
                        maxLines: 5,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Center(
                    child: ScaleTransition(
                      scale: animation1,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              color: Colors.black12),
                          width: 200,
                          height: 55,
                          child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) {
                                return ShopScreen(
                                  li: listt,
                                  li2: listt2,
                                );
                              }));
                            },
                            label: const Text(
                              'Get started',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 253, 252, 252)),
                            ),
                            iconAlignment: IconAlignment.end,
                            icon: const Icon(
                              Icons.chevron_right,
                              size: 35,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

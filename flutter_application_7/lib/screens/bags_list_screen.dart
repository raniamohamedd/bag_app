import 'package:flutter/material.dart';
import 'package:flutter_application_7/models/item.dart';
import 'package:flutter_application_7/core/app_extension.dart';
import 'package:flutter_application_7/widget/drawer.dart';

import 'package:flutter_application_7/screens/bag_popular_details_screen.dart';

import 'package:flutter_application_7/screens/bag_details_screen.dart';
import 'package:flutter_application_7/widget/popular_bag_item.dart';
import 'package:flutter_application_7/widget/bag_item.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen({super.key, required this.li, required this.li2});

  List<item> li;

  List<item2> li2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo[50],
        endDrawer: const Maindrawer(),
        appBar: AppBar(
          backgroundColor: Colors.indigo[50],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),

          toolbarHeight: 110,
          // backgroundColor: const Color.fromARGB(255, 185, 148, 112),
          title: const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Dear',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                Text(
                  'Buy your favourite bag ',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 12, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'search',
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      suffixIcon: const Icon(Icons.widgets, color: Colors.grey),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 12),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...li.map((e) => bag_item(
                            i: e,
                            onselected: (item meal) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => Itemdetails(
                                            furnitureItems: li,
                                            meal: meal,
                                            i: e,
                                            li: li,
                                          )));
                            },
                          ))
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, top: 5),
                    child: Text(
                      'Popular',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ).fadeAnimation(2),
                  ),
                  Column(children: [
                    ...li2.map((e) => popularbags_item(
                        i2: e,
                        onselected2: (item2 meal2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => Itemdetails2(
                                        meal2: meal2,
                                        i: e,
                                        li2: li2,
                                      )));
                        }))
                  ]),
                ],
              )
            ],
          ),
        ));
  }
}

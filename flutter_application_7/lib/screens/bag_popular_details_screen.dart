// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_7/core/app_extension.dart';
import 'package:flutter_application_7/providers/fav_provider.dart';
import 'package:flutter_application_7/widget/bottom.dart';
import 'package:flutter_application_7/widget/bottom_bar.dart';
import 'package:flutter_application_7/widget/rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_application_7/models/item.dart';

class Itemdetails2 extends ConsumerWidget {
  Itemdetails2({
    super.key,
    required this.i,
    required this.li2,
    required item2 meal2,
  });
  final item2 i;
  List<item2> li2;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fav = ref.watch(favmealprovider2);
    final bool isfav = fav.contains(i);

    return Scaffold(
      bottomNavigationBar: BottomBar(
        priceValue: '${i.price}',
      ).fadeAnimation(3.0),
      appBar: AppBar(
        title: Text(
          i.title,
          style: GoogleFonts.ptSerif(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                final wasadded =
                    ref.read(favmealprovider2.notifier).togglmealfav(i);

                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ;
              },
              icon: AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                transitionBuilder: (child, animation) {
                  return child;
                },
                child: Icon(
                  isfav ? Icons.bookmark : Icons.bookmark_border_outlined,
                  color: const Color.fromARGB(255, 10, 10, 10),
                  key: ValueKey(isfav),
                ),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        for (final x in i.images)
                          Card(
                            elevation: 8,
                            margin: const EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset(
                              x,
                              height: 300,
                              fit: BoxFit.cover,
                            ),
                          ).fadeAnimation(4)
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: StarRatingBar(
                score: i.score,
                itemSize: 25,
              ).fadeAnimation(0.4),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: const Text(
                "Synopsis",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.end,
              ).fadeAnimation(0.6),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  for (final x in i.description)
                    Text(
                      x,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.black45),
                    ),
                 SizedBox(height: 80,),


  Row(
    children: [
      Text(
        "Colors :",
        style: TextStyle(
          fontSize: 22,
          color: Colors.black,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.end,
      ),
      SizedBox(
          height: 40,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Stack(
              alignment: Alignment.center,
              children: [
                ...li2.map((e) => Row(
                      children: [
                        for (final x in i.colors)
                          CircleAvatar(
                            backgroundColor: x.color,
                            radius: 18,
                          ),
                      ],
                    )),
              ],
            ),
          )),
  
      Spacer(),
      Row(
        children: [bottom()],
      )
      // Expanded(child: ColorPicker(colors: furniture.colors)),
    ],
  ).fadeAnimation(1.0),
         

                ],
              ).fadeAnimation(0.8),
            ),
           
           ],
        ),
      ),
    );
  }
}

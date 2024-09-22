// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_application_7/models/item.dart';
import 'package:flutter_application_7/core/app_extension.dart';
import 'package:flutter_application_7/widget/rating_bar.dart';

class bag_item extends StatelessWidget {
  const bag_item({
    super.key,
    required this.i,
    required this.onselected,
  });
  final item i;
  final void Function(item item) onselected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(19),
      onTap: () => onselected(i),
      child: SizedBox(
        height: 190,
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 8,
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              clipBehavior: Clip.hardEdge,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      child: Image.asset(
                        i.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ).fadeAnimation(0.4),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        i.title,
                        maxLines: 1,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ).fadeAnimation(5),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            StarRatingBar(
                              score: i.score,
                              itemSize: 12,
                            ),
                            const SizedBox(width: 3),
                            Text(i.score.toString(),
                                style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ],
                        ).fadeAnimation(4.0)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

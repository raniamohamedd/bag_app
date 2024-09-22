import 'package:flutter/material.dart';
import 'package:flutter_application_7/models/item.dart';
import 'package:flutter_application_7/core/app_extension.dart';
import 'package:flutter_application_7/widget/rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class popularbags_item extends StatelessWidget {
  const popularbags_item({
    super.key,
    required this.i2,
    required this.onselected2,
  });
  final item2 i2;

  final void Function(item2 item2) onselected2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(29),
        onTap: () => onselected2(i2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                clipBehavior: Clip.hardEdge,
                margin: const EdgeInsets.all(10),
                child: Image.asset(
                  i2.imageUrl,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      i2.title,
                      style: GoogleFonts.aBeeZee(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ).fadeAnimation(5),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        StarRatingBar(
                          score: i2.score,
                          itemSize: 19,
                        ),
                        const SizedBox(width: 7),
                        Text(i2.score.toString(),
                            style: const TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ],
                    ).fadeAnimation(3.0)
                    //   _furnitureScore(furniture),
                    ,
                    const SizedBox(height: 5),
                    for (final x in i2.description)
                      Text(
                        x,
                        style: GoogleFonts.aBeeZee(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                                color: Colors.black)
                            .copyWith(fontSize: 10),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ).fadeAnimation(2)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final String priceLabel;
  final String priceValue;
  final String buttonLabel;

  const BottomBar({
    super.key,
    this.priceLabel = "Price",
    required this.priceValue,
    this.buttonLabel = "Add to cart",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: Text(
                  priceLabel,
                  style: const TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              FittedBox(
                  child: Text(priceValue,
                      style: const TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600)))
            ],
          ),
          ElevatedButton(
            style: ButtonStyle(backgroundColor:
             WidgetStateProperty
             .all(Colors.brown[400])),

            onPressed: () {},
            child: Text(buttonLabel,style: TextStyle(color: Colors.white),),
            
          )
        ],
      ),
    );
  }
}

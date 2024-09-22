import 'package:flutter/material.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  var x = 1;
  void inc() {
    setState(() {
      x++;
    });
  }

  void dec() {
    if (x < 2) {
      return;
    } else {
      setState(() {
        x--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all( 10),
          child: Row(
            children: [
              CircleAvatar(backgroundColor:Colors.white ,
                child: IconButton(
                onPressed: dec,
                icon: Icon(Icons.remove),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text('$x',
                    style: const TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600)
                        .copyWith(fontSize: 15)),
              ),
              CircleAvatar(backgroundColor:Colors.white ,
                child: IconButton(
                   onPressed: inc,
                  icon: Icon(Icons.add),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

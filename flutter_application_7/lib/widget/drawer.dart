import 'package:flutter/material.dart';

class Maindrawer extends StatelessWidget {
  const Maindrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        DrawerHeader(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.indigo[100]),
            child: const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text('welcome',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ))
              ],
            )),
        ListTile(
            onTap: () {
              Navigator.of(context).pop();
            },
            leading: Icon(
              Icons.home,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            title: const Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,

                //  fontWeight: FontWeight.bold,
              ),
            )),
        ListTile(
            onTap: () {
            },
            leading: Icon(
              Icons.bookmark,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            title: const Text(
              'Saved',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,

                //  fontWeight: FontWeight.bold,
              ),
            )),
        ListTile(
            onTap: () {},
            leading: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            title: const Text(
              'Settings',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,

                //  fontWeight: FontWeight.bold,
              ),
            )),
        ListTile(
            onTap: () {},
            leading: Icon(
              Icons.error_outline,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            title: const Text(
              'About',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,

                //  fontWeight: FontWeight.bold,
              ),
            )),
      ],
    ));
  }
}

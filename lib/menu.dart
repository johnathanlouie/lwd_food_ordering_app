import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lwd_food_ordering_app/common.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<Map<String, dynamic>> _a = [
    {
      'name': 'Sandwiches',
      'image': 'assets/food.png',
      'route': '',
    },
    {
      'name': 'Beverages',
      'image': 'assets/food.png',
      'route': '',
    },
    {
      'name': 'Deals',
      'image': 'assets/food.png',
      'route': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 20),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset(_a[index]['image']),
            title: Text(
              _a[index]['name'],
              style: Theme.of(context).textTheme.subtitle1,
            ),
            trailing: const Icon(Icons.navigate_next_rounded),
            onTap: () {},
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemCount: _a.length,
      ),
      bottomNavigationBar: const MyBottomBar(MyBottomBar.MENU),
    );
  }
}

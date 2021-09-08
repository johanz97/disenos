import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            icon: Icons.window,
            color: Colors.blue,
            text: 'General',
          ),
          _SingleCard(
            icon: Icons.directions_bus,
            color: Colors.brown,
            text: 'Transport',
          ),
          //_SingleCard(),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.shopping_bag,
            color: Colors.purpleAccent,
            text: 'Shopping',
          ),
          _SingleCard(
            icon: Icons.bookmark,
            color: Colors.orange,
            text: 'Bills',
          ),
          //_SingleCard(),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.movie_filter,
            color: Colors.grey,
            text: 'Entertainment',
          ),
          _SingleCard(
            icon: Icons.food_bank_outlined,
            color: Colors.green,
            text: 'Grocery',
          ),
          //_SingleCard(),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icon,
            size: 35,
            color: Colors.white,
          ),
          radius: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(color: color, fontSize: 18),
        )
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: this.child,
          ),
        ),
      ),
    );
  }
}

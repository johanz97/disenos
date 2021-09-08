import 'package:flutter/material.dart';

class CustonButtonNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color.fromRGBO(55, 57, 84, 1),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: IconButton(
              icon: Icon(Icons.book),
              onPressed: () => Navigator.pushNamed(context, 'basic_design'),
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(Icons.bookmark),
              onPressed: () => Navigator.pushNamed(context, 'scroll_design'),
            ),
          ),
        ],
      ),
    );
  }
}

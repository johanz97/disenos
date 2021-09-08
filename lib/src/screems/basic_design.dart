import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/landscape.jpg'),
          ),
          Title(),
          ButtonSection(),
          Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Mollit sunt aliqua quis cillum ex cupidatat. Aliqua sint do eu ad. Minim labore reprehenderit et elit non. Duis in commodo est incididunt nostrud proident ex amet nostrud et ex. Ex cillum nisi enim proident nulla reprehenderit ad velit et minim amet sint id velit.',
              ))
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersted, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(
            icon: Icons.call,
            text: 'CALL',
          ),
          CustomButton(
            icon: Icons.add_location_outlined,
            text: 'ROUTE',
          ),
          CustomButton(
            icon: Icons.share,
            text: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({Key? key, required this.icon, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class InputListTile extends StatelessWidget {
  final String title, subtitle;
  const InputListTile({
    Key? key,
    required this.title,
    required this.subtitle,
  })  : assert(title != null && subtitle != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: ListTile(
        title: Text(
          this.title,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'raleway'),
        ),
        subtitle: Text(
          this.subtitle,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              fontFamily: 'raleway',
              color: Color(0xffcccccc)),
        ),
        leading: CircleAvatar(
          backgroundColor: Color(0xffcccccc),
        ),
        trailing: Icon(Icons.more_vert),
        onTap: () {
          print('avatar');
        },
        dense: true,
        selected: false,
        enabled: true,
      ),
    );
  }
}

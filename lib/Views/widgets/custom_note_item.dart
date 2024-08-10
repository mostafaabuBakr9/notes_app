import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 15, right: 24),
      decoration: BoxDecoration(
          color: Colors.blueAccent.withOpacity(0.8),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(fontSize: 26),
            ),
            subtitle: Text('build your career with tharwat samy',
                style: TextStyle(fontSize: 20)),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                  // Icons.delete,
                  color: Colors.black,
                  size: 30,
                )),
          ),
          Text(
            'May21 ,2022',
            style: TextStyle(color: Colors.black, fontSize: 15),
          )
        ],
      ),
    );
  }
}

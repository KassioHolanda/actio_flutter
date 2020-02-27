import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final PageController controller;
  final double page;

  DrawerTile(this.icon, this.text, this.controller, this.page);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop();
          controller.jumpToPage(page.toInt());
        },
        child: Container(
          height: 50.0,
          color: controller.page.round() == page
              ? Colors.grey[300]
              : Colors.transparent,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 18.0,
              ),
              Icon(
                icon,
                size: 20.0,
                color: controller.page.round() == page
                    ? Colors.deepPurple
                    : text == 'Sair' ? Colors.red : Colors.grey[700],
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(text,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: controller.page.round() == page
                        ? Colors.deepPurple
                        : text == 'Sair' ? Colors.red : Colors.grey[450],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

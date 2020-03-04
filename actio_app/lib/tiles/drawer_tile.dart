import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 2.0),
          height: 44.0,
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
                    ? Colors.blue
                    : text == 'Sair' ? Colors.red : Colors.blueGrey[900],
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(text,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500, color: controller.page.round() == page
                        ? Colors.blue
                        : text == 'Sair' ? Colors.red : Colors.blueGrey[900]))

                  ),
            ],
          ),
        ),
      ),
    );
  }
}

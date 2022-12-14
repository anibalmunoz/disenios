import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(color: Colors.blue, icon: Icons.border_all, text: "General"),
          _SingleCard(color: Colors.purple, icon: Icons.car_rental, text: "Transport"),
        ]),
        TableRow(children: [
          _SingleCard(color: Colors.pinkAccent, icon: Icons.shopping_bag, text: "Shopping"),
          _SingleCard(color: Colors.yellowAccent, icon: Icons.picture_as_pdf_rounded, text: "Bills"),
        ]),
        TableRow(children: [
          _SingleCard(color: Colors.blueAccent, icon: Icons.movie_outlined, text: "Entertaiment"),
          _SingleCard(color: Colors.pinkAccent, icon: Icons.broadcast_on_personal, text: "Grocery"),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(backgroundColor: color, radius: 30, child: Icon(icon, size: 35, color: Colors.white)),
        const SizedBox(height: 10),
        Text(text, style: TextStyle(color: color, fontSize: 18))
      ]),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration:
                BoxDecoration(color: const Color.fromRGBO(62, 66, 107, 0.7), borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}

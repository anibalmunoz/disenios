import 'package:flutter/material.dart';

class PageTittleWidget extends StatelessWidget {
  const PageTittleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
          Text("Clasify Transaction", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(height: 10),
          Text("Clasify this transaction in the particular category",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.normal, color: Colors.white)),
        ]),
      ),
    );
  }
}

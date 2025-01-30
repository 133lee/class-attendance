import 'package:flutter/material.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 15),
      child: Row(
        children: const [
          SizedBox(
            width: 30,
            child: Text(
              "No.",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 28),
          SizedBox(
            width: 120,
            child: Text(
              "Name",
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 60,
            child: Text(
              "Gender",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 35),
          Expanded(
            child: Text(
              "Presence",
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  final String? selectedClass;
  final Function(String) onMenuSelected;

  const HeroSection({
    super.key,
    required this.selectedClass,
    required this.onMenuSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0, left: 25.0, right: 25.0),
      child: Container(
        padding: const EdgeInsets.only(top: 25.0, left: 28, right: 10),
        width: 350,
        height: 160,
        decoration: BoxDecoration(
          color: Colors.grey[500],
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
            image: AssetImage('images/vector.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'ATTENDANCE',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5,
                    color: Colors.white,
                  ),
                ),
                PopupMenuButton<String>(
                  onSelected: onMenuSelected,
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 'Select All',
                      child: Text('Select All'),
                    ),
                    const PopupMenuItem(
                      value: 'Deselect All',
                      child: Text('Deselect All'),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 35),
            Text(
              'Tracking: $selectedClass',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../models/student.dart';

class AttendanceListItem extends StatelessWidget {
  final Student student;
  final VoidCallback onTogglePresence;

  const AttendanceListItem({
    super.key,
    required this.student,
    required this.onTogglePresence,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 3.5),
      child: Container(
        padding: const EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(
              width: 30,
              child: Text(
                student.number,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(width: 25),
            SizedBox(
              width: 120,
              child: Text(
                student.name,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              width: 60,
              child: Text(
                student.gender,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: GestureDetector(
                onTap: onTogglePresence,
                child: Icon(
                  student.presence == 'Present' ? Icons.toggle_on : Icons.toggle_off,
                  size: 45,
                  color: student.presence == 'Present' ? const Color(0xFF010425) : Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
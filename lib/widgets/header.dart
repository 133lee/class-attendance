import 'package:attendance_model/models/student.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String? selectedClass;
  final Map<String, List<Student>> classData;
  final Function(String?) onClassChanged;

  const Header({
    super.key,
    required this.selectedClass,
    required this.classData,
    required this.onClassChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 25,
            child: Image.asset('icons/arrow-small-left.png'),
          ),
          Container(
            width: 150,
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(25),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedClass,
                isExpanded: true,
                items: classData.keys.map((className) {
                  return DropdownMenuItem<String>(
                    value: className,
                    child: Text(
                      className,
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  );
                }).toList(),
                onChanged: onClassChanged,
                dropdownColor: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
                icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
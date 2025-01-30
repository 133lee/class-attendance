import 'package:flutter/material.dart';
import '../models/student.dart';
import '../widgets/header.dart';
import '../widgets/hero_section.dart';
import '../widgets/table_header.dart';
import '../widgets/attendance_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, List<Student>> classData = {
    'Class A': [
      Student(number: '1', name: 'John Doe', gender: 'M', presence: 'Present'),
      Student(number: '2', name: 'Jane Smith', gender: 'F', presence: 'Absent'),
      // Add more students...
    ],
    'Class B': [
      Student(number: '1', name: 'Alice Brown', gender: 'F', presence: 'Present'),
      Student(number: '2', name: 'Bob White', gender: 'M', presence: 'Present'),
      // Add more students...
    ],
  };

  String? selectedClass;
  List<Student> filteredList = [];

  @override
  void initState() {
    super.initState();
    selectedClass = classData.keys.first;
    updateFilteredList(selectedClass);
  }

  void updateFilteredList(String? newClass) {
    if (newClass != null) {
      setState(() {
        selectedClass = newClass;
        filteredList = classData[newClass] ?? [];
      });
    }
  }

  void togglePresence(int index) {
    setState(() {
      filteredList[index].presence =
      filteredList[index].presence == 'Present' ? 'Absent' : 'Present';
    });
  }

  void handleMenuSelection(String value) {
    setState(() {
      if (value == 'Select All') {
        for (var student in filteredList) {
          student.presence = 'Present';
        }
      } else if (value == 'Deselect All') {
        for (var student in filteredList) {
          student.presence = 'Absent';
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Header(
              selectedClass: selectedClass,
              classData: classData,
              onClassChanged: updateFilteredList,
            ),
            HeroSection(
              selectedClass: selectedClass,
              onMenuSelected: handleMenuSelection,
            ),
            const TableHeader(),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 80.0),
                itemCount: filteredList.length,
                itemBuilder: (context, index) {
                  return AttendanceListItem(
                    student: filteredList[index],
                    onTogglePresence: () => togglePresence(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF010425),
        onPressed: () {},
        child: ImageIcon(
          const AssetImage('icons/check-circle.png'),
          color: Colors.grey[300],
        ),
      ),
    );
  }
}
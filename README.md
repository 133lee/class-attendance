# Attendance Tracker App 📊

A Flutter-based attendance tracking app designed to help teachers and educators manage classroom attendance efficiently. This app allows you to mark student attendance, toggle presence status, and view attendance records for different classes.

---

## Features ✨
- **Class Selection**: Choose from multiple classes to track attendance.
- **Student List**: View a list of students with their details (name, gender, and presence status).
- **Toggle Presence**: Easily mark students as present or absent.
- **Select All/Deselect All**: Quickly mark all students as present or absent.
- **Responsive Design**: Works seamlessly on mobile devices.

---

## Screenshots 🖼️
(You can add screenshots of your app here once you have them.)

---

### Prerequisites
- Flutter SDK (version 3.0 or higher)
- Dart (version 2.17 or higher)
- Android Studio or VS Code (with Flutter and Dart plugins installed)

Project Structure 🗂️
Copy
lib/
├── models/
│   └── student.dart          # Student data model
├── widgets/
│   ├── header.dart           # Header with class dropdown
│   ├── hero_section.dart     # Attendance tracking section
│   ├── table_header.dart     # Table headers for student list
│   └── attendance_list_item.dart # Individual student row
├── screens/
│   └── home_screen.dart      # Main screen of the app
└── main.dart                 # Entry point of the app
Code Overview 🧑‍💻
Models
student.dart: Defines the Student class with properties like number, name, gender, and presence.

Widgets
header.dart: Contains the app header with a dropdown to select classes.

hero_section.dart: Displays the attendance tracking section with options to select/deselect all students.

table_header.dart: Displays the table headers for the student list.

attendance_list_item.dart: Represents a single row in the student list with a toggle for presence.

Screens
home_screen.dart: The main screen of the app, combining all widgets and managing state.

Future Improvements 🔮
Data Persistence: Save attendance records locally and/or in the cloud.

Analytics: Add charts and reports to visualize attendance trends.

Multi-User Support: Allow multiple teachers to use the app with separate accounts.

Export Data: Enable exporting attendance records to CSV or PDF.

Contributing 🤝
Contributions are welcome! If you'd like to contribute, please follow these steps:


License 📄
This project is licensed under the MIT License. See the LICENSE file for details.

Acknowledgments 🙏
Thanks to the Flutter team for the amazing framework.

Contact 📧
If you have any questions or feedback, feel free to reach out:

Email: leenyirenda8@gmail.com

GitHub: 133lee

Made with ❤️ and Flutter.

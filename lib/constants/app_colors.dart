import 'package:flutter/material.dart';

class AppColors {
  static Color primary = Colors.blueAccent;
  static Color hint = Colors.grey.shade600;
  static Color secondary = Colors.red;
  static Color secondary2 = Colors.green.shade600;

  static Color white = Colors.grey.shade50;

  static const List<Color> categoryColors = [
    Color.fromRGBO(23, 138, 231, 1),
    Color.fromARGB(255, 160, 96, 53),
    Color.fromARGB(255, 117, 77, 209),
    Color.fromARGB(255, 209, 77, 191),
    Color.fromARGB(255, 194, 77, 209),
    Color.fromARGB(255, 77, 209, 136),
    Color.fromARGB(255, 30, 27, 165),
    Color.fromARGB(255, 7, 223, 0),
    Color.fromARGB(255, 150, 2, 170),
    Color.fromARGB(255, 157, 57, 224),
    Color.fromARGB(255, 199, 224, 57),
  ];

  static const Map<String, Color> mapCategoriesColors = {
    "قضايا واراء": Color.fromARGB(255, 160, 96, 53),
    "الصحة": Color.fromARGB(255, 117, 77, 209),
    "محليات": Color.fromARGB(255, 209, 77, 191),
    "محافظات": Color.fromARGB(255, 194, 77, 209),
    "اقتصاد": Color.fromARGB(255, 77, 209, 136),
    "اقتصاد عربي ودولي": Color.fromARGB(255, 77, 209, 136), // note
    "محلي": Color.fromARGB(255, 77, 209, 136),
    "شركات": Color.fromARGB(255, 209, 92, 77),
    "بورصة": Color.fromARGB(255, 77, 209, 136),
    "مركز الدستور للدراسات الأقتصادية": Color.fromARGB(255, 77, 209, 136),
    "عربي ودولي": Color.fromARGB(255, 30, 27, 165),
    "فلسطين": Color.fromARGB(255, 77, 209, 136),
    "العرب": Color.fromARGB(255, 77, 209, 136),
    "العالم": Color.fromARGB(255, 77, 209, 136),
    "رياضة": Color.fromARGB(255, 7, 223, 0),
    "رياضة محلي": Color.fromARGB(255, 77, 209, 136), // note
    "عربي وعالمي": Color.fromARGB(255, 77, 209, 136),
    "ثقافة": Color.fromARGB(255, 150, 2, 170),
    "دروب": Color.fromARGB(255, 199, 224, 57),
    "تقارير دروب": Color.fromARGB(255, 77, 209, 136),
    "فنون ": Color.fromARGB(255, 77, 209, 136),
    "منوعات": Color.fromARGB(255, 77, 209, 136),
    "شباب": Color.fromARGB(255, 77, 209, 136),
    "جامعات": Color.fromARGB(255, 77, 209, 136),
    "وفيات": Color.fromARGB(255, 77, 209, 136),
    "كاريكاتير": Color.fromARGB(255, 77, 209, 136),
    "صنارة": Color.fromARGB(255, 77, 209, 136),
    "تقارير الدستور": Color.fromARGB(255, 77, 209, 136),
    "مكتبة الصور": Color.fromARGB(255, 77, 209, 136),
    "حوادث": Color.fromARGB(255, 77, 209, 136),
    "المزيد": Color.fromARGB(255, 8, 89, 114),
  };

  static const List<Color> economyCategories = [
    Color.fromRGBO(23, 138, 231, 1),
    Color.fromARGB(255, 231, 210, 23),
    Color.fromARGB(255, 20, 252, 39),
    Color.fromARGB(255, 187, 80, 116),
  ];
  static const List<Color> arabAndInternationalCategories = [
    Color.fromARGB(255, 7, 101, 189),
    Color.fromARGB(255, 40, 163, 50),
    Color.fromARGB(255, 212, 193, 18),
  ];
  static const List<Color> sportCategories = [
    Color.fromARGB(255, 83, 49, 179),
    Color.fromARGB(255, 206, 90, 61),
  ];
  static const List<Color> pathsCategories = [
    Color.fromARGB(255, 204, 21, 37),
    Color.fromARGB(255, 40, 163, 50),
    Color.fromARGB(255, 212, 193, 18),
  ];

  static const List<Color> moreCategories = [
    Color.fromARGB(255, 136, 87, 23),
    Color.fromARGB(255, 39, 108, 211),
    Color.fromARGB(255, 0, 0, 0),
  ];
  static const Color getDefaultColor = Color.fromRGBO(23, 138, 231, 1);
}

// models/tab_bar.dart
class TabModel {
  final String id;
  final String title;

  TabModel({required this.id, required this.title});
}

final List<TabModel> tabData = [
  TabModel(id: 'home', title: 'Home'),
  TabModel(id: 'education', title: 'Education'),
  TabModel(id: 'certificate', title: 'Certificate'),
  TabModel(id: 'project', title: 'Projects'),
  TabModel(id: 'tool', title: 'Tools'),
  TabModel(id: 'about', title: 'About'),
  TabModel(id: 'media', title: 'Media'),
  TabModel(id: 'profile', title: 'Profile'),
];

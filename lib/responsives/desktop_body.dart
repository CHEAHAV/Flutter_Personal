import 'package:flutter/material.dart';
import 'package:personal/components/homes/tabbars/contact_me.dart';
import 'package:personal/components/homes/tabbars/my_name.dart';
import 'package:personal/components/homes/tabbars/my_tap_bar.dart';
import 'package:personal/models/tab_bar.dart';
import 'package:personal/pages/about_page.dart';
import 'package:personal/pages/certificate_page.dart';
import 'package:personal/pages/contact_page.dart';
import 'package:personal/pages/education_page.dart';
import 'package:personal/pages/home_page.dart';
import 'package:personal/pages/media_page.dart';
import 'package:personal/pages/profile_page.dart';
import 'package:personal/pages/project_page.dart';
import 'package:personal/pages/tool_page.dart';

/// Desktop layout for the personal portfolio website
/// Handles responsive design for larger screens with tab-based navigation
class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final _scrollController = ScrollController();

  // Global keys for each section
  final _pageKeys = {
    for (var t in tabData) t.title: GlobalKey(),
    'Contact': GlobalKey(),
  };

  // Flag to prevent animation conflicts during scroll
  bool _isAnimating = false;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: tabData.length, vsync: this)
      ..addListener(_onTabChanged);

    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  /// Handles tab changes and scrolls to the corresponding section
  void _onTabChanged() {
    if (!_tabController.indexIsChanging) {
      _scrollTo(_pageKeys[tabData[_tabController.index].title]);
    }
  }

  /// Updates the active tab based on the scroll position
  void _onScroll() {
    if (_isAnimating) return;

    for (int i = 0; i < tabData.length; i++) {
      final key = _pageKeys[tabData[i].title];
      final ctx = key?.currentContext;
      if (ctx == null) continue;

      final box = ctx.findRenderObject() as RenderBox?;
      if (box == null || !box.hasSize) continue;

      final y = box.localToGlobal(Offset.zero).dy;

      // Adjust the tolerance for smoother syncing
      if (y <= 150 && y > -box.size.height / 2) {
        if (_tabController.index != i) _tabController.animateTo(i);
        break;
      }
    }
  }

  /// Smoothly scrolls to the section using Scrollable.ensureVisible
  void _scrollTo(GlobalKey? key) {
    if (key == null || key.currentContext == null) return;

    _isAnimating = true;

    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
      alignment: 0.0, // align section to top
    ).whenComplete(() => _isAnimating = false);
  }

  /// Navigates directly to a section by title
  void _navigateTo(String title) {
    _scrollTo(_pageKeys[title]);
    final index = tabData.indexWhere((t) => t.title == title);
    if (index != -1) _tabController.animateTo(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ----- Header -----
          Padding(
            padding: const EdgeInsets.only(top: 32, right: 50, left: 50),
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.green.shade900,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  // Logo/Name
                  const MyName(text: "C", name: "CHEAHAV."),

                  // Navigation Tabs
                  Expanded(child: MyTapBar(tabController: _tabController)),

                  // Contact Me button
                  GestureDetector(
                    onTap: () => _navigateTo('Contact'),
                    child: const SizedBox(
                      width: 120,
                      child: ContactMe(text: "Contact Me"),
                    ),
                  ),
                  const SizedBox(width: 15),
                ],
              ),
            ),
          ),

          // ----- Main Content -----
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  HomePage(key: _pageKeys['Home']),
                  EducationPage(key: _pageKeys['Education']),
                  CertificatePage(key: _pageKeys['Certificate']),
                  ProjectPage(key: _pageKeys['Projects']),
                  ToolPage(key: _pageKeys['Tools']),
                  AboutPage(key: _pageKeys['About']),
                  MediaPage(key: _pageKeys['Media']),
                  ProfilePage(key: _pageKeys['Profile']),
                  ContactPage(key: _pageKeys['Contact']),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

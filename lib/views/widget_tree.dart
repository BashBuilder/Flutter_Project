import 'package:flutter/material.dart';
import 'package:flutter_project/Widgets/navbar_widget.dart';
import 'package:flutter_project/data/notifiers.dart';
import 'package:flutter_project/views/pages/home_page.dart';
import 'package:flutter_project/views/pages/profile_page.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode);
              },
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedpage, child) {
          return pages.elementAt(selectedpage);
        },
      ),

      bottomNavigationBar: NavbarWidget(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:oduck/features/notification/widgets/tab_bar.dart';

class NotificationScreen extends StatefulWidget {
  final String tab;

  const NotificationScreen({
    super.key,
    required this.tab,
  });

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          initialIndex: widget.tab == "likes" ? 1 : 0,
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverPersistentHeader(
                  pinned: true,
                  delegate: PersistentTabBar(),
                ),
              ];
            },
            body: const TabBarView(
              children: [
                Center(
                  child: Text("page 1"),
                ),
                Center(
                  child: Text("page 2"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

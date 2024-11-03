import 'package:flutter/material.dart';
import 'package:flutter_home_work7/widgets/profile_header.dart';
import 'package:flutter_home_work7/widgets/user_status_widget_stateful.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const ProfileHeader(),
                UserStatusWidget(
                  projectsCount: 49,
                  followersCount: 1640,
                  followingCount: 750,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

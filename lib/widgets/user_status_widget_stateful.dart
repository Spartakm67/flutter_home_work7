import 'package:flutter/material.dart';
import 'package:flutter_home_work7/styles/container_styles.dart';
import 'package:flutter_home_work7/styles/text_styles.dart';

class UserStatusWidget extends StatefulWidget {
  final int projectsCount;
  final int followersCount;
  final int followingCount;

  const UserStatusWidget({
    required this.projectsCount,
    required this.followersCount,
    required this.followingCount,
    super.key,
  });

  @override
  State<UserStatusWidget> createState() => _UserStatusWidgetState();
}

class _UserStatusWidgetState extends State<UserStatusWidget> {
  late int projects;
  late int followers;
  late int following;

  @override
  void initState() {
    super.initState();
    projects = widget.projectsCount;
    followers = widget.followersCount;
    following = widget.followingCount;
  }

  void _incrementCount(String type) {
    setState(() {
      if (type == 'projects') {
        projects++;
      } else if (type == 'followers') {
        followers++;
      } else if (type == 'following') {
        following++;
      }
    });
  }

  void _decrementCount(String type) {
    setState(() {
      if (type == 'projects' && projects > 0) {
        projects--;
      } else if (type == 'followers' && followers > 0) {
        followers--;
      } else if (type == 'following' && following > 0) {
        following--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingValue = screenWidth < 400 ? 8.0 : 16.0;

    return Padding(
      padding: EdgeInsets.all(paddingValue),
      child: Container(
        padding: EdgeInsets.all(paddingValue),
        decoration: ContainerStyles.containerDecoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildStatistic('Projects', projects, 'projects', context),
            _buildStatistic('Followers', followers, 'followers', context),
            _buildStatistic('Following', following, 'following', context),
          ],
        ),
      ),
    );
  }

  Widget _buildStatistic(String label, int count, String type, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          count.toString(),
          style: TextStyles.countText(context),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyles.defaultText(context),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () => _decrementCount(type),
            ),
            IconButton(
              icon: const Icon(Icons.add, color: Colors.blueAccent,),
              onPressed: () => _incrementCount(type),
            ),
          ],
        ),
      ],
    );
  }
}

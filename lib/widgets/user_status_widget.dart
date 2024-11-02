import 'package:flutter/material.dart';
import 'package:flutter_home_work7/styles/container_styles.dart';
import 'package:flutter_home_work7/styles/text_styles.dart';

class UserStatusWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: ContainerStyles.containerDecoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildStatistic('Projects', projectsCount),
            _buildStatistic('Followers', followersCount),
            _buildStatistic('Following', followingCount),
          ],
        ),
      ),
    );
  }

  Widget _buildStatistic(String label, int count) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          count.toString(),
          style: TextStyles.countText,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyles.defaultText,
        ),
      ],
    );
  }
}

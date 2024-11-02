import 'package:flutter/material.dart';
import 'package:flutter_home_work7/widgets/user_status_details.dart';

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
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
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
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

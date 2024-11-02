import 'package:flutter/material.dart';
import 'package:flutter_home_work7/widgets/avatar_assets_container.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  @override
  Widget build(BuildContext context) {
    return const ImageAssetsContainer();
  }
}

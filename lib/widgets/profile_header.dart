import 'package:flutter/material.dart';
import 'package:flutter_home_work7/widgets/avatar_assets_container.dart';
import 'package:flutter_home_work7/widgets/user_details.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  String name = "Spartak Maznytskyi";
  String work = "Flutter Developer";
  String email = "spartakm@ukr.net";

  void updateProfile(String newName, String newWork, String newEmail) {
    setState(() {
      name = newName;
      work = newWork;
      email = newEmail;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        const ImageAssetsContainer(),
        UserDetails(
          name: name,
          work: work,
          email: email,
          onSave: updateProfile,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_home_work7/styles/text_styles.dart';
import 'package:flutter_home_work7/resources/constants.dart';

class UserDetailsField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Function onSave;

  const UserDetailsField({
    required this.controller,
    required this.label,
    required this.onSave,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            style: TextStyles.userText(context),
            decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyles.defaultText(context),
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.save_as, color: Colors.blueAccent),
          onPressed: () => _validateAndSave(context),
        ),
      ],
    );
  }

  void _validateAndSave(BuildContext context) {
    final email = controller.text;

    if (label == 'Email' && !AppConstants.emailRegex.hasMatch(email)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter a valid email address.'),
        ),
      );
    } else {
      onSave();
    }
  }
}

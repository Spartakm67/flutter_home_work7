import 'package:flutter/material.dart';
import 'package:flutter_home_work7/widgets/user_details_field.dart';
import 'package:flutter_home_work7/styles/container_styles.dart';

class UserDetails extends StatefulWidget {
  final String name;
  final String work;
  final String email;
  final Function(String, String, String) onSave;

  const UserDetails({
    required this.name,
    required this.work,
    required this.email,
    required this.onSave,
    super.key,
  });

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  late final TextEditingController _nameController;
  late final TextEditingController _workController;
  late final TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.name);
    _workController = TextEditingController(text: widget.work);
    _emailController = TextEditingController(text: widget.email);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _workController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _saveData(String type) {
    String name = _nameController.text;
    String work = _workController.text;
    String email = _emailController.text;

    widget.onSave(name, work, email);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingValue = screenWidth < 400 ? 8.0 : 16.0;

    return Padding(
      padding: EdgeInsets.all(paddingValue),
      child: Container(
        decoration: ContainerStyles.containerDecoration,
        padding: EdgeInsets.all(paddingValue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserDetailsField(
              controller: _nameController,
              label: 'Name',
              onSave: _saveData,
            ),
            const Divider(thickness: 1, color: Colors.grey),
            UserDetailsField(
              controller: _workController,
              label: 'Work',
              onSave: _saveData,
            ),
            const Divider(thickness: 1, color: Colors.grey),
            UserDetailsField(
              controller: _emailController,
              label: 'Email',
              onSave: _saveData,
            ),
          ],
        ),
      ),
    );
  }
}

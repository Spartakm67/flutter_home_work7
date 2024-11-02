import 'package:flutter/material.dart';

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

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Changes saved!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.save, color: Colors.blue,),
                onPressed: () => _saveData('name'),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _workController,
                  decoration: const InputDecoration(
                    labelText: 'Work',
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.save, color: Colors.blue,),
                onPressed: () => _saveData('work'),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.save, color: Colors.blue,),
                onPressed: () => _saveData('email'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

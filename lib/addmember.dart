import 'package:flutter/material.dart';
import 'package:stormhive/team.dart';

class AddTeamMemberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Team Member'),
      ),
      body: AddMemberForm(),
    );
  }
}

class AddMemberForm extends StatefulWidget {
  @override
  _AddMemberFormState createState() => _AddMemberFormState();
}

class _AddMemberFormState extends State<AddMemberForm> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late String _imageUrl;
  late String _position;
  late String _expertise;
  late String _experience;
  late String _skills;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a name';
                }
                return null;
              },
              onSaved: (value) {
                _name = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Image URL'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an image URL';
                }
                return null;
              },
              onSaved: (value) {
                _imageUrl = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Position'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a position';
                }
                return null;
              },
              onSaved: (value) {
                _position = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Expertise'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter expertise';
                }
                return null;
              },
              onSaved: (value) {
                _expertise = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Experience'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter experience';
                }
                return null;
              },
              onSaved: (value) {
                _experience = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Skills'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter skills';
                }
                return null;
              },
              onSaved: (value) {
                _skills = value!;
              },
            ),
            ElevatedButton(
              onPressed: () {
                _submitForm();
              },
              child: Text('Add Member'),
            ),
          ],
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Team.addMember(
        Team(
          name: _name,
          imageUrl: _imageUrl,
          position: _position,
          expertise: _expertise,
          experience: _experience,
          skills: _skills,
        ),
      );
      Navigator.pop(context);
    }
  }
}

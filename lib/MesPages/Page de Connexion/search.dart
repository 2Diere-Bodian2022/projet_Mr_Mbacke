import 'package:flutter/material.dart';

class SearchForm extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextFormField(
              controller: _nameController,
              decoration: InputDecoration(hintText: 'Name'),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              controller: _emailController,
              decoration: InputDecoration(hintText: 'Email'),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(hintText: 'Phone'),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              controller: _cityController,
              decoration: InputDecoration(hintText: 'City'),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              controller: _stateController,
              decoration: InputDecoration(hintText: 'State'),
            ),
          ),
        ],
      ),
    );
  }
}

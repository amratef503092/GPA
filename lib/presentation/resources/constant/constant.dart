import 'package:flutter/material.dart';

Widget dropDownButton(   String dropdownValue ,List<String>item , Function function) {
  return DropdownButton<String>(
    value: dropdownValue,
    icon: const Icon(Icons.arrow_downward),
    elevation: 16,
    style: const TextStyle(color: Colors.deepPurple),
    underline: Container(
      height: 2,
      color: Colors.deepPurpleAccent,
    ),
    onChanged: (String? newValue) {
      function(newValue);

    },
    items: item
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
  );
}
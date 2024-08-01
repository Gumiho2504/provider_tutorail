import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Student {
  int id;
  String firstName;
  String lastName;

  Student(this.id, this.firstName, this.lastName);

  void setId(int id) {
    this.id = id;
  }

  int getId() {
    return id;
  }
}

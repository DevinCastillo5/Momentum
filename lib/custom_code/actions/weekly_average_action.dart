// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<double> weeklyAverageAction(String userId) async {
  // Get the current date and the start of the current week
  DateTime now = DateTime.now();
  DateTime startOfWeek = now.subtract(Duration(days: now.weekday - 1));

  // Query Firestore for workouts completed by the user in the current week
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('workouts')
      .where('userId', isEqualTo: userId)
      .where('date', isGreaterThanOrEqualTo: startOfWeek)
      .get();

  // Calculate the average
  int totalWorkouts = snapshot.docs.length;
  double average = totalWorkouts > 0 ? totalWorkouts / 7.0 : 0.0;

  return average;
}

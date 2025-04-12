import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int? calculateAge(DateTime birthDate) {
  final DateTime today = DateTime.now();
  int age = today.year - birthDate.year;

  if (today.month < birthDate.month ||
      (today.month == birthDate.month && today.day < birthDate.day)) {
    age--;
  }

  return age;
}

String? calculateWeek() {
  // calculate the week it is after hitting the workout completed button
  final DateTime now = DateTime.now();
  final int weekNumber =
      ((now.day - 1) / 7).floor() + 1; // Calculate week number of the month
  return 'Week $weekNumber of ${DateFormat('MMMM').format(now)} ${now.year}';
}

int? calculateAverageWorkout() {
  // get average of workouts completed as an integer
  // Assuming we have a list of completed workouts
  List<int> completedWorkouts = [5, 3, 4, 6, 2]; // Example data

  if (completedWorkouts.isEmpty) return null;

  int totalWorkouts = completedWorkouts.reduce((a, b) => a + b);
  return (totalWorkouts / completedWorkouts.length).round();
}

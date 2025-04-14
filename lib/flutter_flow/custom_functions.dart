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
import '/backend/schema/structs/index.dart';
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

String? formatWorkoutDuration(
  DateTime? startTime,
  DateTime? endTime,
) {
  if (startTime == null || endTime == null) {
    return null;
  }

  final duration = endTime.difference(startTime);
  final hours = duration.inHours;
  final minutes = duration.inMinutes.remainder(60);

  if (hours > 0) {
    return '${hours}h ${minutes}m';
  } else {
    return '${minutes}m';
  }
}

String? joinList(List<String>? list) {
  // make a function that takes a list and takes all elements and puts them in one string in the same order of the list
  if (list == null || list.isEmpty) {
    return null;
  }
  return list.join(', ');
}

List<int>? generatePics() {
  // change this function so it generates and returns a list of numbers 1-3 in random order
  List<int> numbers = [1, 2, 3];
  numbers.shuffle(); // Shuffle the list to randomize the order
  return numbers; // Return the randomized list
}

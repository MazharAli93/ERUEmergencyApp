// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert' show utf8;
import 'package:download/download.dart';

Future newCustomAction(List<InformationRow>? userDoc) async {
  // Add your function code here!

  userDoc = userDoc ?? [];

  String fileContent = "FirstName" +
      "," +
      "MiddleName" +
      "," +
      "LastName" +
      "," +
      "MotherName" +
      "," +
      "Gender" +
      "," +
      "Age" +
      "," +
      "Mobile" +
      "," +
      "BloodType" +
      "," +
      "District" +
      "," +
      "City" +
      "," +
      "Town" +
      "," +
      "Treatment" +
      "," +
      "Triage_Color" +
      "," +
      "Injury_Location" +
      "," +
      "Note" +
      "," +
      "Condition" +
      "," +
      "Current_Location";

  userDoc.asMap().forEach((index, record) => fileContent = fileContent +
      "\n" +
      record.firstName.toString() +
      "," +
      record.middleName.toString() +
      "," +
      record.lastName.toString() +
      "," +
      record.motherName.toString() +
      "," +
      record.gender.toString() +
      "," +
      record.age.toString() +
      "," +
      record.mobile.toString() +
      "," +
      record.bloodType.toString() +
      "," +
      record.district.toString() +
      "," +
      record.city.toString() +
      "," +
      record.town.toString() +
      "," +
      record.treatment.toString() +
      "," +
      record.triageColor.toString() +
      "," +
      record.injuryLocation.toString() +
      "," +
      record.note.toString() +
      "," +
      record.condition.toString() +
      "," +
      record.currentLocation.toString());

  final fileName =
      "ERU_Export_Information" + DateTime.now().toString() + ".csv";
  var bytes = utf8.encode(fileContent);

  final stream = Stream.fromIterable(bytes);
  return download(stream, fileName);
}

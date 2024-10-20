import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'triage_widget.dart' show TriageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TriageModel extends FlutterFlowModel<TriageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for FirstNameText widget.
  FocusNode? firstNameTextFocusNode;
  TextEditingController? firstNameTextTextController;
  String? Function(BuildContext, String?)? firstNameTextTextControllerValidator;
  // State field(s) for MiddleNameText widget.
  FocusNode? middleNameTextFocusNode;
  TextEditingController? middleNameTextTextController;
  String? Function(BuildContext, String?)?
      middleNameTextTextControllerValidator;
  // State field(s) for LastNameText widget.
  FocusNode? lastNameTextFocusNode;
  TextEditingController? lastNameTextTextController;
  String? Function(BuildContext, String?)? lastNameTextTextControllerValidator;
  // State field(s) for MotherNameText widget.
  FocusNode? motherNameTextFocusNode;
  TextEditingController? motherNameTextTextController;
  String? Function(BuildContext, String?)?
      motherNameTextTextControllerValidator;
  // State field(s) for AgeText widget.
  FocusNode? ageTextFocusNode;
  TextEditingController? ageTextTextController;
  String? Function(BuildContext, String?)? ageTextTextControllerValidator;
  // State field(s) for Gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  // State field(s) for MobileText widget.
  FocusNode? mobileTextFocusNode;
  TextEditingController? mobileTextTextController;
  final mobileTextMask = MaskTextInputFormatter(mask: '##/######');
  String? Function(BuildContext, String?)? mobileTextTextControllerValidator;
  // State field(s) for BloodTypeDropdown widget.
  String? bloodTypeDropdownValue;
  FormFieldController<String>? bloodTypeDropdownValueController;
  // State field(s) for District widget.
  String? districtValue;
  FormFieldController<String>? districtValueController;
  // State field(s) for CityDropdown widget.
  String? cityDropdownValue;
  FormFieldController<String>? cityDropdownValueController;
  // State field(s) for TownText widget.
  FocusNode? townTextFocusNode;
  TextEditingController? townTextTextController;
  String? Function(BuildContext, String?)? townTextTextControllerValidator;
  // State field(s) for Treated widget.
  String? treatedValue;
  FormFieldController<String>? treatedValueController;
  // State field(s) for Triage-Color widget.
  String? triageColorValue;
  FormFieldController<String>? triageColorValueController;
  // State field(s) for Injury widget.
  String? injuryValue;
  FormFieldController<String>? injuryValueController;
  // State field(s) for NoteText widget.
  FocusNode? noteTextFocusNode;
  TextEditingController? noteTextTextController;
  String? Function(BuildContext, String?)? noteTextTextControllerValidator;
  // State field(s) for ConditionText widget.
  FocusNode? conditionTextFocusNode;
  TextEditingController? conditionTextTextController;
  String? Function(BuildContext, String?)? conditionTextTextControllerValidator;
  // State field(s) for CurrentLocation widget.
  FocusNode? currentLocationFocusNode;
  TextEditingController? currentLocationTextController;
  String? Function(BuildContext, String?)?
      currentLocationTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in SaveButton widget.
  List<DistrictsRow>? districtNameQuery;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    firstNameTextFocusNode?.dispose();
    firstNameTextTextController?.dispose();

    middleNameTextFocusNode?.dispose();
    middleNameTextTextController?.dispose();

    lastNameTextFocusNode?.dispose();
    lastNameTextTextController?.dispose();

    motherNameTextFocusNode?.dispose();
    motherNameTextTextController?.dispose();

    ageTextFocusNode?.dispose();
    ageTextTextController?.dispose();

    mobileTextFocusNode?.dispose();
    mobileTextTextController?.dispose();

    townTextFocusNode?.dispose();
    townTextTextController?.dispose();

    noteTextFocusNode?.dispose();
    noteTextTextController?.dispose();

    conditionTextFocusNode?.dispose();
    conditionTextTextController?.dispose();

    currentLocationFocusNode?.dispose();
    currentLocationTextController?.dispose();
  }
}

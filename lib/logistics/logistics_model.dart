import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'logistics_widget.dart' show LogisticsWidget;
import 'package:flutter/material.dart';

class LogisticsModel extends FlutterFlowModel<LogisticsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for LogisticsTypeDrop widget.
  String? logisticsTypeDropValue;
  FormFieldController<String>? logisticsTypeDropValueController;
  // State field(s) for Quantity widget.
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;
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
  // State field(s) for Location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // State field(s) for DecriptionText widget.
  FocusNode? decriptionTextFocusNode;
  TextEditingController? decriptionTextTextController;
  String? Function(BuildContext, String?)?
      decriptionTextTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in SaveButton widget.
  List<DistrictsRow>? districtSelectionName;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    quantityFocusNode?.dispose();
    quantityTextController?.dispose();

    townTextFocusNode?.dispose();
    townTextTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    decriptionTextFocusNode?.dispose();
    decriptionTextTextController?.dispose();
  }
}

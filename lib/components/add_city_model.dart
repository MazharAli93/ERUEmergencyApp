import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_city_widget.dart' show AddCityWidget;
import 'package:flutter/material.dart';

class AddCityModel extends FlutterFlowModel<AddCityWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for District widget.
  String? districtValue;
  FormFieldController<String>? districtValueController;
  // State field(s) for CityNameText widget.
  FocusNode? cityNameTextFocusNode;
  TextEditingController? cityNameTextTextController;
  String? Function(BuildContext, String?)? cityNameTextTextControllerValidator;
  String? _cityNameTextTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in Button-Add widget.
  List<CityRow>? checkCity;

  @override
  void initState(BuildContext context) {
    cityNameTextTextControllerValidator = _cityNameTextTextControllerValidator;
  }

  @override
  void dispose() {
    cityNameTextFocusNode?.dispose();
    cityNameTextTextController?.dispose();
  }
}

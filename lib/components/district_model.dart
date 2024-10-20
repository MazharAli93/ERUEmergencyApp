import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'district_widget.dart' show DistrictWidget;
import 'package:flutter/material.dart';

class DistrictModel extends FlutterFlowModel<DistrictWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DistrictNameText widget.
  FocusNode? districtNameTextFocusNode;
  TextEditingController? districtNameTextTextController;
  String? Function(BuildContext, String?)?
      districtNameTextTextControllerValidator;
  String? _districtNameTextTextControllerValidator(
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
  List<DistrictsRow>? checkDistrict;

  @override
  void initState(BuildContext context) {
    districtNameTextTextControllerValidator =
        _districtNameTextTextControllerValidator;
  }

  @override
  void dispose() {
    districtNameTextFocusNode?.dispose();
    districtNameTextTextController?.dispose();
  }
}

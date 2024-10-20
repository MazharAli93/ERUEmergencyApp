import '/flutter_flow/flutter_flow_util.dart';
import 'logisitics_type_widget.dart' show LogisiticsTypeWidget;
import 'package:flutter/material.dart';

class LogisiticsTypeModel extends FlutterFlowModel<LogisiticsTypeWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for LogisticsTypeText widget.
  FocusNode? logisticsTypeTextFocusNode;
  TextEditingController? logisticsTypeTextTextController;
  String? Function(BuildContext, String?)?
      logisticsTypeTextTextControllerValidator;
  String? _logisticsTypeTextTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    logisticsTypeTextTextControllerValidator =
        _logisticsTypeTextTextControllerValidator;
  }

  @override
  void dispose() {
    logisticsTypeTextFocusNode?.dispose();
    logisticsTypeTextTextController?.dispose();
  }
}

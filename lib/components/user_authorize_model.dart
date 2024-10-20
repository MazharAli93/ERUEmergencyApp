import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'user_authorize_widget.dart' show UserAuthorizeWidget;
import 'package:flutter/material.dart';

class UserAuthorizeModel extends FlutterFlowModel<UserAuthorizeWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for UserDisplayName widget.
  FocusNode? userDisplayNameFocusNode;
  TextEditingController? userDisplayNameTextController;
  String? Function(BuildContext, String?)?
      userDisplayNameTextControllerValidator;
  String? _userDisplayNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    return null;
  }

  // State field(s) for UserNickName widget.
  FocusNode? userNickNameFocusNode;
  TextEditingController? userNickNameTextController;
  String? Function(BuildContext, String?)? userNickNameTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for Access widget.
  String? accessValue;
  FormFieldController<String>? accessValueController;

  @override
  void initState(BuildContext context) {
    userDisplayNameTextControllerValidator =
        _userDisplayNameTextControllerValidator;
  }

  @override
  void dispose() {
    userDisplayNameFocusNode?.dispose();
    userDisplayNameTextController?.dispose();

    userNickNameFocusNode?.dispose();
    userNickNameTextController?.dispose();
  }
}

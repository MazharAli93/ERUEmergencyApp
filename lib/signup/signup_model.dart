import '/flutter_flow/flutter_flow_util.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignupModel extends FlutterFlowModel<SignupWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress-Create widget.
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? emailAddressCreateTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextControllerValidator;
  // State field(s) for password-Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // State field(s) for password2 widget.
  FocusNode? password2FocusNode;
  TextEditingController? password2TextController;
  late bool password2Visibility;
  String? Function(BuildContext, String?)? password2TextControllerValidator;
  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  // State field(s) for MiddleName widget.
  FocusNode? middleNameFocusNode;
  TextEditingController? middleNameTextController;
  String? Function(BuildContext, String?)? middleNameTextControllerValidator;
  // State field(s) for LastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  // State field(s) for MobileNumber widget.
  FocusNode? mobileNumberFocusNode;
  TextEditingController? mobileNumberTextController;
  final mobileNumberMask = MaskTextInputFormatter(mask: '##/######');
  String? Function(BuildContext, String?)? mobileNumberTextControllerValidator;
  // State field(s) for ERUNickname widget.
  FocusNode? eRUNicknameFocusNode;
  TextEditingController? eRUNicknameTextController;
  String? Function(BuildContext, String?)? eRUNicknameTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordCreateVisibility = false;
    password2Visibility = false;
  }

  @override
  void dispose() {
    emailAddressCreateFocusNode?.dispose();
    emailAddressCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    password2FocusNode?.dispose();
    password2TextController?.dispose();

    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    middleNameFocusNode?.dispose();
    middleNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    mobileNumberFocusNode?.dispose();
    mobileNumberTextController?.dispose();

    eRUNicknameFocusNode?.dispose();
    eRUNicknameTextController?.dispose();
  }
}

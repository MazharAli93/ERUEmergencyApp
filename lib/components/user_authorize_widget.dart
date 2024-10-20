import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'user_authorize_model.dart';
export 'user_authorize_model.dart';

class UserAuthorizeWidget extends StatefulWidget {
  const UserAuthorizeWidget({
    super.key,
    String? displayname,
    String? nickname,
    bool? authorization,
    required this.userRef,
  })  : displayname = displayname ?? 'N/A',
        nickname = nickname ?? 'N/A',
        authorization = authorization ?? false;

  final String displayname;
  final String nickname;
  final bool authorization;
  final DocumentReference? userRef;

  @override
  State<UserAuthorizeWidget> createState() => _UserAuthorizeWidgetState();
}

class _UserAuthorizeWidgetState extends State<UserAuthorizeWidget> {
  late UserAuthorizeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserAuthorizeModel());

    _model.userDisplayNameTextController ??=
        TextEditingController(text: widget.displayname);
    _model.userDisplayNameFocusNode ??= FocusNode();

    _model.userNickNameTextController ??=
        TextEditingController(text: widget.nickname);
    _model.userNickNameFocusNode ??= FocusNode();

    _model.switchValue = widget.authorization;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(),
      child: Form(
        key: _model.formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close_sharp,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.7,
                child: TextFormField(
                  controller: _model.userDisplayNameTextController,
                  focusNode: _model.userDisplayNameFocusNode,
                  autofocus: true,
                  textCapitalization: TextCapitalization.words,
                  readOnly: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                  keyboardType: TextInputType.name,
                  validator: _model.userDisplayNameTextControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.7,
                child: TextFormField(
                  controller: _model.userNickNameTextController,
                  focusNode: _model.userNickNameFocusNode,
                  autofocus: true,
                  textCapitalization: TextCapitalization.words,
                  readOnly: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'ERU Nickname',
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                  keyboardType: TextInputType.name,
                  validator: _model.userNickNameTextControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(80.0, 30.0, 100.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Switch.adaptive(
                    value: _model.switchValue!,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.switchValue = newValue);
                    },
                    activeColor: FlutterFlowTheme.of(context).secondary,
                    activeTrackColor: FlutterFlowTheme.of(context).accent2,
                    inactiveTrackColor: FlutterFlowTheme.of(context).tertiary,
                    inactiveThumbColor: FlutterFlowTheme.of(context).error,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: FutureBuilder<List<DistrictsRow>>(
                future: DistrictsTable().queryRows(
                  queryFn: (q) => q.order('Name'),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<DistrictsRow> accessDistrictsRowList = snapshot.data!;

                  return FlutterFlowDropDown<String>(
                    controller: _model.accessValueController ??=
                        FormFieldController<String>(
                      _model.accessValue ??= '',
                    ),
                    options: List<String>.from(['1', '2']),
                    optionLabels: const ['Admin', 'User'],
                    onChanged: (val) =>
                        safeSetState(() => _model.accessValue = val),
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                    hintText: 'Access Type',
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).primaryText,
                    borderWidth: 0.0,
                    borderRadius: 8.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    hidesUnderline: true,
                    isOverButton: false,
                    isSearchable: false,
                    isMultiSelect: false,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  // Firebase_Update

                  await widget.userRef!.update(createUserRecordData(
                    authorized: _model.switchValue,
                    adminRole: valueOrDefault<int>(
                      functions.stringtoInt(_model.accessValue),
                      2,
                    ),
                  ));
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: const Text('firebase'),
                        content: const Text('firebase'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(alertDialogContext),
                            child: const Text('Ok'),
                          ),
                        ],
                      );
                    },
                  );
                  await UsersTable().update(
                    data: {
                      'Authorized': _model.switchValue,
                      'AdminRole': functions.stringtoInt(valueOrDefault<String>(
                        _model.accessValue,
                        '2',
                      )),
                    },
                    matchingRows: (rows) => rows.eq(
                      'Firebase_Ref',
                      valueOrDefault<String>(
                        widget.userRef?.id,
                        'N/A',
                      ),
                    ),
                  );
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: const Text('supabase'),
                        content: const Text('supabase'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(alertDialogContext),
                            child: const Text('Ok'),
                          ),
                        ],
                      );
                    },
                  );
                  safeSetState(() {
                    _model.userDisplayNameTextController?.clear();
                    _model.userNickNameTextController?.clear();
                  });
                  Navigator.pop(context);
                },
                text: 'Save',
                options: FFButtonOptions(
                  width: MediaQuery.sizeOf(context).width * 0.7,
                  height: 50.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.white,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter Tight',
                        color: Colors.black,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

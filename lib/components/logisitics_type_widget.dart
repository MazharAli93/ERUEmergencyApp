import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'logisitics_type_model.dart';
export 'logisitics_type_model.dart';

class LogisiticsTypeWidget extends StatefulWidget {
  const LogisiticsTypeWidget({super.key});

  @override
  State<LogisiticsTypeWidget> createState() => _LogisiticsTypeWidgetState();
}

class _LogisiticsTypeWidgetState extends State<LogisiticsTypeWidget> {
  late LogisiticsTypeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogisiticsTypeModel());

    _model.logisticsTypeTextTextController ??= TextEditingController();
    _model.logisticsTypeTextFocusNode ??= FocusNode();

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
                width: MediaQuery.sizeOf(context).width * 0.8,
                child: TextFormField(
                  controller: _model.logisticsTypeTextTextController,
                  focusNode: _model.logisticsTypeTextFocusNode,
                  autofocus: true,
                  textCapitalization: TextCapitalization.words,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Add Logistics Type',
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
                  validator: _model.logisticsTypeTextTextControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  // ValidateForm
                  if (_model.formKey.currentState == null ||
                      !_model.formKey.currentState!.validate()) {
                    return;
                  }
                  // Add_Type_Supabase
                  await LogisticsTypeListTable().insert({
                    'Type': _model.logisticsTypeTextTextController.text,
                  });
                  safeSetState(() {
                    _model.logisticsTypeTextTextController?.clear();
                  });
                },
                text: 'Add',
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

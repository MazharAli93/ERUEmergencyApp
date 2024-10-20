import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'add_city_model.dart';
export 'add_city_model.dart';

class AddCityWidget extends StatefulWidget {
  const AddCityWidget({super.key});

  @override
  State<AddCityWidget> createState() => _AddCityWidgetState();
}

class _AddCityWidgetState extends State<AddCityWidget> {
  late AddCityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddCityModel());

    _model.cityNameTextTextController ??= TextEditingController();
    _model.cityNameTextFocusNode ??= FocusNode();

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
                  List<DistrictsRow> districtDistrictsRowList = snapshot.data!;

                  return FlutterFlowDropDown<String>(
                    controller: _model.districtValueController ??=
                        FormFieldController<String>(
                      _model.districtValue ??= '',
                    ),
                    options: List<String>.from(districtDistrictsRowList
                        .map((e) => e.districtId.toString())
                        .toList()),
                    optionLabels: districtDistrictsRowList
                        .map((e) => valueOrDefault<String>(
                              e.name,
                              'N/A',
                            ))
                        .toList(),
                    onChanged: (val) =>
                        safeSetState(() => _model.districtValue = val),
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                    hintText: 'District',
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
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.7,
                child: TextFormField(
                  controller: _model.cityNameTextTextController,
                  focusNode: _model.cityNameTextFocusNode,
                  autofocus: true,
                  textCapitalization: TextCapitalization.words,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'City Name',
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
                  validator: _model.cityNameTextTextControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  var shouldSetState = false;
                  // ValidateForm
                  if (_model.formKey.currentState == null ||
                      !_model.formKey.currentState!.validate()) {
                    return;
                  }
                  // CheckCityQuery
                  _model.checkCity = await CityTable().queryRows(
                    queryFn: (q) => q
                        .eq(
                          'District_Ref',
                          valueOrDefault<int>(
                            functions.stringtoInt(_model.districtValue),
                            0,
                          ),
                        )
                        .eq(
                          'Name',
                          _model.cityNameTextTextController.text,
                        ),
                  );
                  shouldSetState = true;
                  if (_model.checkCity?.length.toString() == '0') {
                    // Add_Type_Supabase
                    await CityTable().insert({
                      'District_Ref':
                          functions.stringtoInt(_model.districtValue),
                      'Name': _model.cityNameTextTextController.text,
                    });
                    safeSetState(() {
                      _model.cityNameTextTextController?.clear();
                    });
                    if (shouldSetState) safeSetState(() {});
                    return;
                  } else {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: const Text('City Exists'),
                          content: const Text('City Already Exists'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: const Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                    if (shouldSetState) safeSetState(() {});
                    return;
                  }

                  if (shouldSetState) safeSetState(() {});
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

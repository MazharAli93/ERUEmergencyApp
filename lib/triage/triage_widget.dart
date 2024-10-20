import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/components/empty_city_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'triage_model.dart';
export 'triage_model.dart';

class TriageWidget extends StatefulWidget {
  const TriageWidget({super.key});

  @override
  State<TriageWidget> createState() => _TriageWidgetState();
}

class _TriageWidgetState extends State<TriageWidget> {
  late TriageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TriageModel());

    _model.firstNameTextTextController ??= TextEditingController();
    _model.firstNameTextFocusNode ??= FocusNode();

    _model.middleNameTextTextController ??= TextEditingController();
    _model.middleNameTextFocusNode ??= FocusNode();

    _model.lastNameTextTextController ??= TextEditingController();
    _model.lastNameTextFocusNode ??= FocusNode();

    _model.motherNameTextTextController ??= TextEditingController();
    _model.motherNameTextFocusNode ??= FocusNode();

    _model.ageTextTextController ??= TextEditingController();
    _model.ageTextFocusNode ??= FocusNode();

    _model.mobileTextTextController ??= TextEditingController();
    _model.mobileTextFocusNode ??= FocusNode();

    _model.townTextTextController ??= TextEditingController();
    _model.townTextFocusNode ??= FocusNode();

    _model.noteTextTextController ??= TextEditingController();
    _model.noteTextFocusNode ??= FocusNode();

    _model.conditionTextTextController ??= TextEditingController();
    _model.conditionTextFocusNode ??= FocusNode();

    _model.currentLocationTextController ??= TextEditingController();
    _model.currentLocationFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                FlutterFlowTheme.of(context).customColor1,
                FlutterFlowTheme.of(context).customColor2
              ],
              stops: const [0.0, 1.0],
              begin: const AlignmentDirectional(0.0, -1.0),
              end: const AlignmentDirectional(0, 1.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 26.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/WhatsApp_Image_2024-09-23_at_20.29.47_f968fb00.jpg',
                      width: 150.0,
                      height: 150.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      child: TextFormField(
                        controller: _model.firstNameTextTextController,
                        focusNode: _model.firstNameTextFocusNode,
                        autofocus: false,
                        textCapitalization: TextCapitalization.words,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'First Name',
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
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.firstNameTextTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      child: TextFormField(
                        controller: _model.middleNameTextTextController,
                        focusNode: _model.middleNameTextFocusNode,
                        autofocus: false,
                        textCapitalization: TextCapitalization.words,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'Middle Name',
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
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.middleNameTextTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      child: TextFormField(
                        controller: _model.lastNameTextTextController,
                        focusNode: _model.lastNameTextFocusNode,
                        autofocus: false,
                        textCapitalization: TextCapitalization.words,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'Last Name',
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
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.lastNameTextTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      child: TextFormField(
                        controller: _model.motherNameTextTextController,
                        focusNode: _model.motherNameTextFocusNode,
                        autofocus: false,
                        textCapitalization: TextCapitalization.words,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'Mother Name',
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
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.motherNameTextTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      child: TextFormField(
                        controller: _model.ageTextTextController,
                        focusNode: _model.ageTextFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'Age',
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
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        maxLength: 3,
                        buildCounter: (context,
                                {required currentLength,
                                required isFocused,
                                maxLength}) =>
                            null,
                        keyboardType: TextInputType.number,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.ageTextTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.genderValueController ??=
                          FormFieldController<String>(null),
                      options: const ['Male', 'Female'],
                      onChanged: (val) =>
                          safeSetState(() => _model.genderValue = val),
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      height: 40.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Gender',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
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
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      child: TextFormField(
                        controller: _model.mobileTextTextController,
                        focusNode: _model.mobileTextFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'Mobile',
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
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.number,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.mobileTextTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [_model.mobileTextMask],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.bloodTypeDropdownValueController ??=
                          FormFieldController<String>(null),
                      options: const [
                        'A+',
                        'A-',
                        'B+',
                        'B-',
                        'O+',
                        'O-',
                        'AB+',
                        'AB-'
                      ],
                      onChanged: (val) => safeSetState(
                          () => _model.bloodTypeDropdownValue = val),
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      height: 40.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Blood Type',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
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
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
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
                        List<DistrictsRow> districtDistrictsRowList =
                            snapshot.data!;

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
                          height: 40.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'District',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).primaryText,
                          borderWidth: 0.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: FutureBuilder<List<CityRow>>(
                      future: CityTable().queryRows(
                        queryFn: (q) => q
                            .eq(
                              'District_Ref',
                              functions.stringtoInt(_model.districtValue),
                            )
                            .order('Name'),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return const EmptyCityWidget();
                        }
                        List<CityRow> cityDropdownCityRowList = snapshot.data!;

                        return FlutterFlowDropDown<String>(
                          controller: _model.cityDropdownValueController ??=
                              FormFieldController<String>(null),
                          options: cityDropdownCityRowList
                              .map((e) => valueOrDefault<String>(
                                    e.name,
                                    'N/A',
                                  ))
                              .toList(),
                          onChanged: (val) => safeSetState(
                              () => _model.cityDropdownValue = val),
                          width: MediaQuery.sizeOf(context).width * 0.7,
                          height: 40.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'City',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).primaryText,
                          borderWidth: 0.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      child: TextFormField(
                        controller: _model.townTextTextController,
                        focusNode: _model.townTextFocusNode,
                        autofocus: false,
                        textCapitalization: TextCapitalization.words,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'Town',
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
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.townTextTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.treatedValueController ??=
                          FormFieldController<String>(null),
                      options: const ['Onsite', 'Hospital', 'No Treatment'],
                      onChanged: (val) =>
                          safeSetState(() => _model.treatedValue = val),
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      height: 40.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Treatment',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
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
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.triageColorValueController ??=
                          FormFieldController<String>(null),
                      options: const ['Green', 'Red', 'Yellow', 'Black'],
                      onChanged: (val) =>
                          safeSetState(() => _model.triageColorValue = val),
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      height: 40.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Triage',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
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
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.injuryValueController ??=
                          FormFieldController<String>(null),
                      options: const [
                        'Head',
                        'Uperbody',
                        'Lowerbody',
                        'Hands',
                        'Legs'
                      ],
                      onChanged: (val) =>
                          safeSetState(() => _model.injuryValue = val),
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      height: 40.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Injury Location',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
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
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      child: TextFormField(
                        controller: _model.noteTextTextController,
                        focusNode: _model.noteTextFocusNode,
                        autofocus: false,
                        textCapitalization: TextCapitalization.sentences,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'Note',
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
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                              lineHeight: 4.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.noteTextTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      child: TextFormField(
                        controller: _model.conditionTextTextController,
                        focusNode: _model.conditionTextFocusNode,
                        autofocus: false,
                        textCapitalization: TextCapitalization.sentences,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'Condition',
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
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                              lineHeight: 4.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.conditionTextTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      child: TextFormField(
                        controller: _model.currentLocationTextController,
                        focusNode: _model.currentLocationFocusNode,
                        autofocus: false,
                        textCapitalization: TextCapitalization.sentences,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'Current Location',
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
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                              lineHeight: 3.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.currentLocationTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 100.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        // QueryDistrictName
                        _model.districtNameQuery =
                            await DistrictsTable().queryRows(
                          queryFn: (q) => q.eq(
                            'District_id',
                            functions.stringtoInt(_model.districtValue),
                          ),
                        );
                        // Firebase_Info Add

                        await InformationRecord.collection.doc().set({
                          ...createInformationRecordData(
                            userID: currentUserReference,
                            firstName: _model.firstNameTextTextController.text,
                            middleName:
                                _model.middleNameTextTextController.text,
                            lastName: _model.lastNameTextTextController.text,
                            motherName:
                                _model.motherNameTextTextController.text,
                            mobileNumber: _model.mobileTextTextController.text,
                            dataCategory: 'Triage',
                            gender: _model.genderValue,
                            age: _model.ageTextTextController.text,
                            bloodType: _model.bloodTypeDropdownValue,
                            district: _model.districtNameQuery?.first.name,
                            city: _model.cityDropdownValue,
                            town: _model.townTextTextController.text,
                            treatment: _model.treatedValue,
                            triageColor: _model.triageColorValue,
                            injuryLocation: _model.injuryValue,
                            note: _model.noteTextTextController.text,
                            condition: _model.conditionTextTextController.text,
                            currentLocation:
                                _model.currentLocationTextController.text,
                          ),
                          ...mapToFirestore(
                            {
                              'Created_At': FieldValue.serverTimestamp(),
                            },
                          ),
                        });
                        // Supabase Insert Data
                        await InformationTable().insert({
                          'Created_By_Name': currentUserDisplayName,
                          'Info_Type': 'Triage',
                          'FirstName': _model.firstNameTextTextController.text,
                          'MiddleName':
                              _model.middleNameTextTextController.text,
                          'LastName': _model.lastNameTextTextController.text,
                          'MotherName':
                              _model.motherNameTextTextController.text,
                          'Gender': _model.genderValue,
                          'Age': _model.ageTextTextController.text,
                          'Mobile': _model.mobileTextTextController.text,
                          'BloodType': _model.bloodTypeDropdownValue,
                          'District': _model.districtNameQuery?.first.name,
                          'City': _model.cityDropdownValue,
                          'Town': _model.townTextTextController.text,
                          'Treatment': _model.treatedValue,
                          'Triage_Color': _model.triageColorValue,
                          'Injury_Location': _model.injuryValue,
                          'Note': _model.noteTextTextController.text,
                          'Condition': _model.conditionTextTextController.text,
                          'Current_Location':
                              _model.currentLocationTextController.text,
                          'Created_By_Id': currentUserReference?.id,
                        });
                        // Clear Data
                        safeSetState(() {
                          _model.firstNameTextTextController?.clear();
                          _model.middleNameTextTextController?.clear();
                          _model.lastNameTextTextController?.clear();
                          _model.motherNameTextTextController?.clear();
                          _model.ageTextTextController?.clear();
                          _model.mobileTextTextController?.clear();
                          _model.townTextTextController?.clear();
                          _model.noteTextTextController?.clear();
                          _model.conditionTextTextController?.clear();
                          _model.currentLocationTextController?.clear();
                        });
                        // Reset Dropdowns
                        safeSetState(() {
                          _model.genderValueController?.reset();
                          _model.bloodTypeDropdownValueController?.reset();
                          _model.districtValueController?.reset();
                          _model.treatedValueController?.reset();
                          _model.triageColorValueController?.reset();
                          _model.injuryValueController?.reset();
                        });

                        safeSetState(() {});
                      },
                      text: 'Save',
                      options: FFButtonOptions(
                        width: MediaQuery.sizeOf(context).width * 0.7,
                        height: 50.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Inter Tight',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

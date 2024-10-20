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
import 'logistics_model.dart';
export 'logistics_model.dart';

class LogisticsWidget extends StatefulWidget {
  const LogisticsWidget({super.key});

  @override
  State<LogisticsWidget> createState() => _LogisticsWidgetState();
}

class _LogisticsWidgetState extends State<LogisticsWidget> {
  late LogisticsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogisticsModel());

    _model.quantityTextController ??= TextEditingController();
    _model.quantityFocusNode ??= FocusNode();

    _model.townTextTextController ??= TextEditingController();
    _model.townTextFocusNode ??= FocusNode();

    _model.locationTextController ??= TextEditingController();
    _model.locationFocusNode ??= FocusNode();

    _model.decriptionTextTextController ??= TextEditingController();
    _model.decriptionTextFocusNode ??= FocusNode();

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
        backgroundColor: FlutterFlowTheme.of(context).customColor2,
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 20.0, 0.0),
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
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 26.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/WhatsApp_Image_2024-09-23_at_20.29.47_f968fb00.jpg',
                      width: 150.0,
                      height: 150.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: FutureBuilder<List<LogisticsTypeListRow>>(
                    future: LogisticsTypeListTable().queryRows(
                      queryFn: (q) => q,
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
                      List<LogisticsTypeListRow>
                          logisticsTypeDropLogisticsTypeListRowList =
                          snapshot.data!;

                      return FlutterFlowDropDown<String>(
                        controller: _model.logisticsTypeDropValueController ??=
                            FormFieldController<String>(null),
                        options: logisticsTypeDropLogisticsTypeListRowList
                            .map((e) => valueOrDefault<String>(
                                  e.type,
                                  'N/A',
                                ))
                            .toList(),
                        onChanged: (val) => safeSetState(
                            () => _model.logisticsTypeDropValue = val),
                        width: MediaQuery.sizeOf(context).width * 0.7,
                        height: 40.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Logistics',
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
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    child: TextFormField(
                      controller: _model.quantityTextController,
                      focusNode: _model.quantityFocusNode,
                      autofocus: false,
                      textCapitalization: TextCapitalization.sentences,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Quantity',
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
                      validator: _model.quantityTextControllerValidator
                          .asValidator(context),
                    ),
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
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
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
                        onChanged: (val) =>
                            safeSetState(() => _model.cityDropdownValue = val),
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
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    child: TextFormField(
                      controller: _model.townTextTextController,
                      focusNode: _model.townTextFocusNode,
                      autofocus: false,
                      textCapitalization: TextCapitalization.sentences,
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
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    child: TextFormField(
                      controller: _model.locationTextController,
                      focusNode: _model.locationFocusNode,
                      autofocus: false,
                      textCapitalization: TextCapitalization.sentences,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Location',
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
                            lineHeight: 1.0,
                          ),
                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                      validator: _model.locationTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    child: TextFormField(
                      controller: _model.decriptionTextTextController,
                      focusNode: _model.decriptionTextFocusNode,
                      autofocus: false,
                      textCapitalization: TextCapitalization.sentences,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Description',
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
                      validator: _model.decriptionTextTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 200.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        // QueryDistrict
                        _model.districtSelectionName =
                            await DistrictsTable().queryRows(
                          queryFn: (q) => q.eq(
                            'District_id',
                            functions
                                .stringtoInt(_model.logisticsTypeDropValue),
                          ),
                        );
                        // Firebase_Info Add

                        await LogisticsRecord.collection.doc().set({
                          ...createLogisticsRecordData(
                            logisticsType: _model.logisticsTypeDropValue,
                            createdBy: currentUserReference,
                            quantity: _model.quantityTextController.text,
                            district: _model.districtValue,
                            city: _model.cityDropdownValue,
                            town: _model.townTextTextController.text,
                            location: _model.locationTextController.text,
                            description:
                                _model.decriptionTextTextController.text,
                          ),
                          ...mapToFirestore(
                            {
                              'created_at': FieldValue.serverTimestamp(),
                            },
                          ),
                        });
                        // Supabase Insert Data
                        await LogisticsTable().insert({
                          'District': _model.districtSelectionName?.first.name,
                          'City': _model.cityDropdownValue,
                          'Town': _model.townTextTextController.text,
                          'Created_By_Firebase_Ref': currentUserReference?.id,
                          'Logistics_Type': _model.logisticsTypeDropValue,
                          'Quantity': _model.quantityTextController.text,
                          'Location': _model.locationTextController.text,
                          'Description':
                              _model.decriptionTextTextController.text,
                        });
                        // Clear Data
                        safeSetState(() {
                          _model.locationTextController?.clear();
                          _model.townTextTextController?.clear();
                          _model.decriptionTextTextController?.clear();
                          _model.quantityTextController?.clear();
                        });
                        // Reset Dropdowns
                        safeSetState(() {
                          _model.logisticsTypeDropValueController?.reset();
                          _model.districtValueController?.reset();
                          _model.cityDropdownValueController?.reset();
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

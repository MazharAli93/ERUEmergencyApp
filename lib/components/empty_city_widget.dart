import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'empty_city_model.dart';
export 'empty_city_model.dart';

class EmptyCityWidget extends StatefulWidget {
  const EmptyCityWidget({super.key});

  @override
  State<EmptyCityWidget> createState() => _EmptyCityWidgetState();
}

class _EmptyCityWidgetState extends State<EmptyCityWidget> {
  late EmptyCityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyCityModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowDropDown<String>(
      controller: _model.cityDropdownValueController ??=
          FormFieldController<String>(null),
      options: const <String>[],
      onChanged: (val) => safeSetState(() => _model.cityDropdownValue = val),
      width: MediaQuery.sizeOf(context).width * 0.7,
      height: 40.0,
      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Inter',
            letterSpacing: 0.0,
          ),
      hintText: 'Select District to view City',
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
      margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
      hidesUnderline: true,
      isOverButton: false,
      isSearchable: false,
      isMultiSelect: false,
    );
  }
}

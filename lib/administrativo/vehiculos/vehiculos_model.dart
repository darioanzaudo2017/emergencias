import '/backend/supabase/supabase.dart';
import '/componentes/menulateralweb/menulateralweb_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vehiculos_widget.dart' show VehiculosWidget;
import 'package:flutter/material.dart';

class VehiculosModel extends FlutterFlowModel<VehiculosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateralweb component.
  late MenulateralwebModel menulateralwebModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<VehiculosRow>();

  @override
  void initState(BuildContext context) {
    menulateralwebModel = createModel(context, () => MenulateralwebModel());
  }

  @override
  void dispose() {
    menulateralwebModel.dispose();
    paginatedDataTableController.dispose();
  }
}

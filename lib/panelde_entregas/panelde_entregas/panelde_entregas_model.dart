import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/menulateralweb/menulateralweb_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'panelde_entregas_widget.dart' show PaneldeEntregasWidget;
import 'package:flutter/material.dart';

class PaneldeEntregasModel extends FlutterFlowModel<PaneldeEntregasWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateralweb component.
  late MenulateralwebModel menulateralwebModel;
  // State field(s) for BuscadorSolicitud widget.
  FocusNode? buscadorSolicitudFocusNode;
  TextEditingController? buscadorSolicitudTextController;
  String? Function(BuildContext, String?)?
      buscadorSolicitudTextControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // Stores action output result for [Backend Call - API (readpedidosunicos)] action in Button widget.
  ApiCallResponse? apidetallepedido2;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<PedidosRow>? query;

  @override
  void initState(BuildContext context) {
    menulateralwebModel = createModel(context, () => MenulateralwebModel());
  }

  @override
  void dispose() {
    menulateralwebModel.dispose();
    buscadorSolicitudFocusNode?.dispose();
    buscadorSolicitudTextController?.dispose();

    paginatedDataTableController.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}

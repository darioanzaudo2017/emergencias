import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/menulateralweb/menulateralweb_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'solicitudes_widget.dart' show SolicitudesWidget;
import 'package:flutter/material.dart';

class SolicitudesModel extends FlutterFlowModel<SolicitudesWidget> {
  ///  Local state fields for this page.

  List<int> idsolicitudes = [];
  void addToIdsolicitudes(int item) => idsolicitudes.add(item);
  void removeFromIdsolicitudes(int item) => idsolicitudes.remove(item);
  void removeAtIndexFromIdsolicitudes(int index) =>
      idsolicitudes.removeAt(index);
  void insertAtIndexInIdsolicitudes(int index, int item) =>
      idsolicitudes.insert(index, item);
  void updateIdsolicitudesAtIndex(int index, Function(int) updateFn) =>
      idsolicitudes[index] = updateFn(idsolicitudes[index]);

  String? busquedaVacia;

  ///  State fields for stateful widgets in this page.

  // Model for menulateralweb component.
  late MenulateralwebModel menulateralwebModel;
  // State field(s) for Buscador widget.
  FocusNode? buscadorFocusNode;
  TextEditingController? buscadorTextController;
  String? Function(BuildContext, String?)? buscadorTextControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<PedidosRow>? query;

  @override
  void initState(BuildContext context) {
    menulateralwebModel = createModel(context, () => MenulateralwebModel());
  }

  @override
  void dispose() {
    menulateralwebModel.dispose();
    buscadorFocusNode?.dispose();
    buscadorTextController?.dispose();

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

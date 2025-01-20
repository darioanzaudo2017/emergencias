import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cargar_articulos_widget.dart' show CargarArticulosWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CargarArticulosModel extends FlutterFlowModel<CargarArticulosWidget> {
  ///  Local state fields for this page.

  int? contadorGuardar = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropRubro widget.
  String? dropRubroValue;
  FormFieldController<String>? dropRubroValueController;
  // State field(s) for DropNecesidad widget.
  String? dropNecesidadValue;
  FormFieldController<String>? dropNecesidadValueController;
  // State field(s) for TextCantidad widget.
  FocusNode? textCantidadFocusNode;
  TextEditingController? textCantidadTextController;
  String? Function(BuildContext, String?)? textCantidadTextControllerValidator;
  String? _textCantidadTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe Cargar una cantidad';
    }

    return null;
  }

  // State field(s) for TextObservaciones widget.
  FocusNode? textObservacionesFocusNode;
  TextEditingController? textObservacionesTextController;
  String? Function(BuildContext, String?)?
      textObservacionesTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  DetalledePedidoRow? idDetallePedido;
  Completer<List<DetalledePedidoRow>>? requestCompleter;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<DetalledePedidoRow>();

  @override
  void initState(BuildContext context) {
    textCantidadTextControllerValidator = _textCantidadTextControllerValidator;
  }

  @override
  void dispose() {
    textCantidadFocusNode?.dispose();
    textCantidadTextController?.dispose();

    textObservacionesFocusNode?.dispose();
    textObservacionesTextController?.dispose();

    paginatedDataTableController.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}

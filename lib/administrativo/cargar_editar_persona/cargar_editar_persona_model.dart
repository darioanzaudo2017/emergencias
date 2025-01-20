import '/backend/supabase/supabase.dart';
import '/componentes/menulateralweb/menulateralweb_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cargar_editar_persona_widget.dart' show CargarEditarPersonaWidget;
import 'package:flutter/material.dart';

class CargarEditarPersonaModel
    extends FlutterFlowModel<CargarEditarPersonaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateralweb component.
  late MenulateralwebModel menulateralwebModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<PersonasRow>();

  @override
  void initState(BuildContext context) {
    menulateralwebModel = createModel(context, () => MenulateralwebModel());
  }

  @override
  void dispose() {
    menulateralwebModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    paginatedDataTableController.dispose();
  }
}

import '/backend/supabase/supabase.dart';
import '/componentes/menulateralweb/menulateralweb_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detalle_autorizar_pedido_widget.dart' show DetalleAutorizarPedidoWidget;
import 'package:flutter/material.dart';

class DetalleAutorizarPedidoModel
    extends FlutterFlowModel<DetalleAutorizarPedidoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateralweb component.
  late MenulateralwebModel menulateralwebModel;
  // State field(s) for TextNombre widget.
  FocusNode? textNombreFocusNode;
  TextEditingController? textNombreTextController;
  String? Function(BuildContext, String?)? textNombreTextControllerValidator;
  // State field(s) for Textdni widget.
  FocusNode? textdniFocusNode;
  TextEditingController? textdniTextController;
  String? Function(BuildContext, String?)? textdniTextControllerValidator;
  // State field(s) for TextTelefono widget.
  FocusNode? textTelefonoFocusNode;
  TextEditingController? textTelefonoTextController;
  String? Function(BuildContext, String?)? textTelefonoTextControllerValidator;
  // State field(s) for TextDiscapacidad widget.
  FocusNode? textDiscapacidadFocusNode;
  TextEditingController? textDiscapacidadTextController;
  String? Function(BuildContext, String?)?
      textDiscapacidadTextControllerValidator;
  // State field(s) for TextBarrio widget.
  FocusNode? textBarrioFocusNode;
  TextEditingController? textBarrioTextController;
  String? Function(BuildContext, String?)? textBarrioTextControllerValidator;
  // State field(s) for TextDireccion widget.
  FocusNode? textDireccionFocusNode;
  TextEditingController? textDireccionTextController;
  String? Function(BuildContext, String?)? textDireccionTextControllerValidator;
  // State field(s) for TextProcedencia widget.
  FocusNode? textProcedenciaFocusNode;
  TextEditingController? textProcedenciaTextController;
  String? Function(BuildContext, String?)?
      textProcedenciaTextControllerValidator;
  // State field(s) for TextSubsecretaria widget.
  FocusNode? textSubsecretariaFocusNode;
  TextEditingController? textSubsecretariaTextController;
  String? Function(BuildContext, String?)?
      textSubsecretariaTextControllerValidator;
  // State field(s) for TextObs widget.
  FocusNode? textObsFocusNode;
  TextEditingController? textObsTextController;
  String? Function(BuildContext, String?)? textObsTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<DetalledePedidoRow>();

  @override
  void initState(BuildContext context) {
    menulateralwebModel = createModel(context, () => MenulateralwebModel());
  }

  @override
  void dispose() {
    menulateralwebModel.dispose();
    textNombreFocusNode?.dispose();
    textNombreTextController?.dispose();

    textdniFocusNode?.dispose();
    textdniTextController?.dispose();

    textTelefonoFocusNode?.dispose();
    textTelefonoTextController?.dispose();

    textDiscapacidadFocusNode?.dispose();
    textDiscapacidadTextController?.dispose();

    textBarrioFocusNode?.dispose();
    textBarrioTextController?.dispose();

    textDireccionFocusNode?.dispose();
    textDireccionTextController?.dispose();

    textProcedenciaFocusNode?.dispose();
    textProcedenciaTextController?.dispose();

    textSubsecretariaFocusNode?.dispose();
    textSubsecretariaTextController?.dispose();

    textObsFocusNode?.dispose();
    textObsTextController?.dispose();

    paginatedDataTableController.dispose();
  }
}

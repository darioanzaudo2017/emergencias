import '/componentes/menulateralweb/menulateralweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'detalle_panel_entrega_widget.dart' show DetallePanelEntregaWidget;
import 'package:flutter/material.dart';

class DetallePanelEntregaModel
    extends FlutterFlowModel<DetallePanelEntregaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for menulateralweb component.
  late MenulateralwebModel menulateralwebModel;
  // State field(s) for TextNombre widget.
  FocusNode? textNombreFocusNode;
  TextEditingController? textNombreTextController;
  String? Function(BuildContext, String?)? textNombreTextControllerValidator;
  String? _textNombreTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'No Cargo el Nombre';
    }

    return null;
  }

  // State field(s) for TextVehiculo widget.
  FocusNode? textVehiculoFocusNode;
  TextEditingController? textVehiculoTextController;
  String? Function(BuildContext, String?)? textVehiculoTextControllerValidator;
  String? _textVehiculoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'No Cargo el Vehículo';
    }

    return null;
  }

  // State field(s) for TextFechaEntrega widget.
  FocusNode? textFechaEntregaFocusNode;
  TextEditingController? textFechaEntregaTextController;
  String? Function(BuildContext, String?)?
      textFechaEntregaTextControllerValidator;
  String? _textFechaEntregaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'No cargo la Fecha de la Entrega';
    }

    return null;
  }

  // State field(s) for DropEntrega widget.
  String? dropEntregaValue1;
  FormFieldController<String>? dropEntregaValueController1;
  // State field(s) for DropEntrega widget.
  String? dropEntregaValue2;
  FormFieldController<String>? dropEntregaValueController2;

  @override
  void initState(BuildContext context) {
    menulateralwebModel = createModel(context, () => MenulateralwebModel());
    textNombreTextControllerValidator = _textNombreTextControllerValidator;
    textVehiculoTextControllerValidator = _textVehiculoTextControllerValidator;
    textFechaEntregaTextControllerValidator =
        _textFechaEntregaTextControllerValidator;
  }

  @override
  void dispose() {
    menulateralwebModel.dispose();
    textNombreFocusNode?.dispose();
    textNombreTextController?.dispose();

    textVehiculoFocusNode?.dispose();
    textVehiculoTextController?.dispose();

    textFechaEntregaFocusNode?.dispose();
    textFechaEntregaTextController?.dispose();
  }
}

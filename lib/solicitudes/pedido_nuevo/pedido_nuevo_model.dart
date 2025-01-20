import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pedido_nuevo_widget.dart' show PedidoNuevoWidget;
import 'package:flutter/material.dart';

class PedidoNuevoModel extends FlutterFlowModel<PedidoNuevoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextNombre widget.
  FocusNode? textNombreFocusNode;
  TextEditingController? textNombreTextController;
  String? Function(BuildContext, String?)? textNombreTextControllerValidator;
  String? _textNombreTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'es Necesario Cargar el Nombre y Apellido';
    }

    return null;
  }

  // State field(s) for Textdni widget.
  FocusNode? textdniFocusNode;
  TextEditingController? textdniTextController;
  String? Function(BuildContext, String?)? textdniTextControllerValidator;
  String? _textdniTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es Necesario Cargar DNI';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 8) {
      return 'Maximum 8 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for TextTelefono widget.
  FocusNode? textTelefonoFocusNode;
  TextEditingController? textTelefonoTextController;
  String? Function(BuildContext, String?)? textTelefonoTextControllerValidator;
  String? _textTelefonoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es Necesario Cargar el Teléfono';
    }

    return null;
  }

  // State field(s) for DropDownBarrios widget.
  String? dropDownBarriosValue;
  FormFieldController<String>? dropDownBarriosValueController;
  // State field(s) for TextDireccion widget.
  FocusNode? textDireccionFocusNode;
  TextEditingController? textDireccionTextController;
  String? Function(BuildContext, String?)? textDireccionTextControllerValidator;
  String? _textDireccionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es Necesario Cargar la Dirección';
    }

    return null;
  }

  // State field(s) for SwitchDisca widget.
  bool? switchDiscaValue;
  // State field(s) for DropDownProce widget.
  String? dropDownProceValue;
  FormFieldController<String>? dropDownProceValueController;
  // State field(s) for TextObs widget.
  FocusNode? textObsFocusNode;
  TextEditingController? textObsTextController;
  String? Function(BuildContext, String?)? textObsTextControllerValidator;
  // State field(s) for DropDownSubSecre widget.
  String? dropDownSubSecreValue;
  FormFieldController<String>? dropDownSubSecreValueController;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  PedidosRow? insertarid;

  @override
  void initState(BuildContext context) {
    textNombreTextControllerValidator = _textNombreTextControllerValidator;
    textdniTextControllerValidator = _textdniTextControllerValidator;
    textTelefonoTextControllerValidator = _textTelefonoTextControllerValidator;
    textDireccionTextControllerValidator =
        _textDireccionTextControllerValidator;
  }

  @override
  void dispose() {
    textNombreFocusNode?.dispose();
    textNombreTextController?.dispose();

    textdniFocusNode?.dispose();
    textdniTextController?.dispose();

    textTelefonoFocusNode?.dispose();
    textTelefonoTextController?.dispose();

    textDireccionFocusNode?.dispose();
    textDireccionTextController?.dispose();

    textObsFocusNode?.dispose();
    textObsTextController?.dispose();
  }
}

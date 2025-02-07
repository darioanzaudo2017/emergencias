import '/flutter_flow/flutter_flow_util.dart';
import 'editar_productos_widget.dart' show EditarProductosWidget;
import 'package:flutter/material.dart';

class EditarProductosModel extends FlutterFlowModel<EditarProductosWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtRubro widget.
  FocusNode? txtRubroFocusNode;
  TextEditingController? txtRubroTextController;
  String? Function(BuildContext, String?)? txtRubroTextControllerValidator;
  // State field(s) for txtNecesidad widget.
  FocusNode? txtNecesidadFocusNode;
  TextEditingController? txtNecesidadTextController;
  String? Function(BuildContext, String?)? txtNecesidadTextControllerValidator;
  // State field(s) for txtCantidad widget.
  FocusNode? txtCantidadFocusNode;
  TextEditingController? txtCantidadTextController;
  String? Function(BuildContext, String?)? txtCantidadTextControllerValidator;
  String? _txtCantidadTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'La Cantidad no puede estar vacia';
    }

    return null;
  }

  // State field(s) for txtObs widget.
  FocusNode? txtObsFocusNode;
  TextEditingController? txtObsTextController;
  String? Function(BuildContext, String?)? txtObsTextControllerValidator;
  String? _txtObsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es necesario agregar una observación al cambio realizado';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtCantidadTextControllerValidator = _txtCantidadTextControllerValidator;
    txtObsTextControllerValidator = _txtObsTextControllerValidator;
  }

  @override
  void dispose() {
    txtRubroFocusNode?.dispose();
    txtRubroTextController?.dispose();

    txtNecesidadFocusNode?.dispose();
    txtNecesidadTextController?.dispose();

    txtCantidadFocusNode?.dispose();
    txtCantidadTextController?.dispose();

    txtObsFocusNode?.dispose();
    txtObsTextController?.dispose();
  }
}

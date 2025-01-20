import '/componentes/menulateralweb/menulateralweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_producto_widget.dart' show EditarProductoWidget;
import 'package:flutter/material.dart';

class EditarProductoModel extends FlutterFlowModel<EditarProductoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for menulateralweb component.
  late MenulateralwebModel menulateralwebModel;
  // State field(s) for DropRubro widget.
  String? dropRubroValue;
  FormFieldController<String>? dropRubroValueController;
  // State field(s) for TextNecesidad widget.
  FocusNode? textNecesidadFocusNode;
  TextEditingController? textNecesidadTextController;
  String? Function(BuildContext, String?)? textNecesidadTextControllerValidator;
  String? _textNecesidadTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es Necesario Cargar la Necesidad';
    }

    return null;
  }

  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {
    menulateralwebModel = createModel(context, () => MenulateralwebModel());
    textNecesidadTextControllerValidator =
        _textNecesidadTextControllerValidator;
  }

  @override
  void dispose() {
    menulateralwebModel.dispose();
    textNecesidadFocusNode?.dispose();
    textNecesidadTextController?.dispose();
  }
}

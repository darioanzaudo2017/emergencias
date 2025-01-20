import '/componentes/menulateralweb/menulateralweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_vehiculo_widget.dart' show EditarVehiculoWidget;
import 'package:flutter/material.dart';

class EditarVehiculoModel extends FlutterFlowModel<EditarVehiculoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for menulateralweb component.
  late MenulateralwebModel menulateralwebModel;
  // State field(s) for DropTipo widget.
  String? dropTipoValue;
  FormFieldController<String>? dropTipoValueController;
  // State field(s) for TextPatente widget.
  FocusNode? textPatenteFocusNode;
  TextEditingController? textPatenteTextController;
  String? Function(BuildContext, String?)? textPatenteTextControllerValidator;
  String? _textPatenteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es Necesario Cargar la Patente';
    }

    return null;
  }

  // State field(s) for TextIdentificador widget.
  FocusNode? textIdentificadorFocusNode;
  TextEditingController? textIdentificadorTextController;
  String? Function(BuildContext, String?)?
      textIdentificadorTextControllerValidator;
  String? _textIdentificadorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es Necesario Cargar el Nombre o Identificador';
    }

    return null;
  }

  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {
    menulateralwebModel = createModel(context, () => MenulateralwebModel());
    textPatenteTextControllerValidator = _textPatenteTextControllerValidator;
    textIdentificadorTextControllerValidator =
        _textIdentificadorTextControllerValidator;
  }

  @override
  void dispose() {
    menulateralwebModel.dispose();
    textPatenteFocusNode?.dispose();
    textPatenteTextController?.dispose();

    textIdentificadorFocusNode?.dispose();
    textIdentificadorTextController?.dispose();
  }
}

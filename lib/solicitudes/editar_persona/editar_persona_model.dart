import '/componentes/menulateralweb/menulateralweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_persona_widget.dart' show EditarPersonaWidget;
import 'package:flutter/material.dart';

class EditarPersonaModel extends FlutterFlowModel<EditarPersonaWidget> {
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
      return 'Es Necesario Cargar el Nombre Completo';
    }

    return null;
  }

  // State field(s) for TextDNI widget.
  FocusNode? textDNIFocusNode;
  TextEditingController? textDNITextController;
  String? Function(BuildContext, String?)? textDNITextControllerValidator;
  String? _textDNITextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es Necesario Cargar el DNI';
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

  // State field(s) for DropGenero widget.
  String? dropGeneroValue;
  FormFieldController<String>? dropGeneroValueController;

  @override
  void initState(BuildContext context) {
    menulateralwebModel = createModel(context, () => MenulateralwebModel());
    textNombreTextControllerValidator = _textNombreTextControllerValidator;
    textDNITextControllerValidator = _textDNITextControllerValidator;
    textTelefonoTextControllerValidator = _textTelefonoTextControllerValidator;
  }

  @override
  void dispose() {
    menulateralwebModel.dispose();
    textNombreFocusNode?.dispose();
    textNombreTextController?.dispose();

    textDNIFocusNode?.dispose();
    textDNITextController?.dispose();

    textTelefonoFocusNode?.dispose();
    textTelefonoTextController?.dispose();
  }
}

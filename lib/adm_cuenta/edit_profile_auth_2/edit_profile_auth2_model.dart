import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_auth2_widget.dart' show EditProfileAuth2Widget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditProfileAuth2Model extends FlutterFlowModel<EditProfileAuth2Widget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NombreCompleto widget.
  FocusNode? nombreCompletoFocusNode;
  TextEditingController? nombreCompletoTextController;
  String? Function(BuildContext, String?)?
      nombreCompletoTextControllerValidator;
  String? _nombreCompletoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es Necesario Cargar el Nombre Completo';
    }

    return null;
  }

  // State field(s) for dni widget.
  FocusNode? dniFocusNode;
  TextEditingController? dniTextController;
  final dniMask = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? dniTextControllerValidator;
  String? _dniTextControllerValidator(BuildContext context, String? val) {
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

  // State field(s) for Telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  String? _telefonoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es Necesario Cargar tu nro de Teléfono';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nombreCompletoTextControllerValidator =
        _nombreCompletoTextControllerValidator;
    dniTextControllerValidator = _dniTextControllerValidator;
    telefonoTextControllerValidator = _telefonoTextControllerValidator;
  }

  @override
  void dispose() {
    nombreCompletoFocusNode?.dispose();
    nombreCompletoTextController?.dispose();

    dniFocusNode?.dispose();
    dniTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'auth2_create_widget.dart' show Auth2CreateWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Auth2CreateModel extends FlutterFlowModel<Auth2CreateWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NombreCompleto widget.
  FocusNode? nombreCompletoFocusNode;
  TextEditingController? nombreCompletoTextController;
  String? Function(BuildContext, String?)?
      nombreCompletoTextControllerValidator;
  String? _nombreCompletoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Dni widget.
  FocusNode? dniFocusNode;
  TextEditingController? dniTextController;
  final dniMask = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? dniTextControllerValidator;
  String? _dniTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for passwordconfirm widget.
  FocusNode? passwordconfirmFocusNode;
  TextEditingController? passwordconfirmTextController;
  late bool passwordconfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordconfirmTextControllerValidator;
  String? _passwordconfirmTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nombreCompletoTextControllerValidator =
        _nombreCompletoTextControllerValidator;
    dniTextControllerValidator = _dniTextControllerValidator;
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    passwordconfirmVisibility = false;
    passwordconfirmTextControllerValidator =
        _passwordconfirmTextControllerValidator;
  }

  @override
  void dispose() {
    nombreCompletoFocusNode?.dispose();
    nombreCompletoTextController?.dispose();

    dniFocusNode?.dispose();
    dniTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordconfirmFocusNode?.dispose();
    passwordconfirmTextController?.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'obs_rechazo_widget.dart' show ObsRechazoWidget;
import 'package:flutter/material.dart';

class ObsRechazoModel extends FlutterFlowModel<ObsRechazoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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
    txtObsTextControllerValidator = _txtObsTextControllerValidator;
  }

  @override
  void dispose() {
    txtObsFocusNode?.dispose();
    txtObsTextController?.dispose();
  }
}

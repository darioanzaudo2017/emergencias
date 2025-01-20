import '/componentes/menulateralweb/menulateralweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'listade_usuarios_widget.dart' show ListadeUsuariosWidget;
import 'package:flutter/material.dart';

class ListadeUsuariosModel extends FlutterFlowModel<ListadeUsuariosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menulateralweb component.
  late MenulateralwebModel menulateralwebModel;

  @override
  void initState(BuildContext context) {
    menulateralwebModel = createModel(context, () => MenulateralwebModel());
  }

  @override
  void dispose() {
    menulateralwebModel.dispose();
  }
}

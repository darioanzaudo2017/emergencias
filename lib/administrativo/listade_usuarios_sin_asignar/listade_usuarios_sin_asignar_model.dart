import '/componentes/menulateralweb/menulateralweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'listade_usuarios_sin_asignar_widget.dart'
    show ListadeUsuariosSinAsignarWidget;
import 'package:flutter/material.dart';

class ListadeUsuariosSinAsignarModel
    extends FlutterFlowModel<ListadeUsuariosSinAsignarWidget> {
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

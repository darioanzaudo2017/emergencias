import '/componentes/menulateralweb/menulateralweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'herramientas_administrativas_widget.dart'
    show HerramientasAdministrativasWidget;
import 'package:flutter/material.dart';

class HerramientasAdministrativasModel
    extends FlutterFlowModel<HerramientasAdministrativasWidget> {
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

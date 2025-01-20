import '/componentes/menulateralweb/menulateralweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'asignacion_widget.dart' show AsignacionWidget;
import 'package:flutter/material.dart';

class AsignacionModel extends FlutterFlowModel<AsignacionWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for menulateralweb component.
  late MenulateralwebModel menulateralwebModel;
  // State field(s) for DropEntregador widget.
  String? dropEntregadorValue;
  FormFieldController<String>? dropEntregadorValueController;
  DateTime? datePicked;
  // State field(s) for DropVehiculo widget.
  String? dropVehiculoValue;
  FormFieldController<String>? dropVehiculoValueController;

  @override
  void initState(BuildContext context) {
    menulateralwebModel = createModel(context, () => MenulateralwebModel());
  }

  @override
  void dispose() {
    menulateralwebModel.dispose();
  }
}

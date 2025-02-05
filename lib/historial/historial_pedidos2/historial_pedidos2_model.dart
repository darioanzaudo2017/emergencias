import '/backend/supabase/supabase.dart';
import '/componentes/menulateralweb/menulateralweb_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'historial_pedidos2_widget.dart' show HistorialPedidos2Widget;
import 'package:flutter/material.dart';

class HistorialPedidos2Model extends FlutterFlowModel<HistorialPedidos2Widget> {
  ///  Local state fields for this page.

  List<int> idsolicitudes = [];
  void addToIdsolicitudes(int item) => idsolicitudes.add(item);
  void removeFromIdsolicitudes(int item) => idsolicitudes.remove(item);
  void removeAtIndexFromIdsolicitudes(int index) =>
      idsolicitudes.removeAt(index);
  void insertAtIndexInIdsolicitudes(int index, int item) =>
      idsolicitudes.insert(index, item);
  void updateIdsolicitudesAtIndex(int index, Function(int) updateFn) =>
      idsolicitudes[index] = updateFn(idsolicitudes[index]);

  String? busquedaVacia;

  ///  State fields for stateful widgets in this page.

  // Model for menulateralweb component.
  late MenulateralwebModel menulateralwebModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<PedidosRow>();

  @override
  void initState(BuildContext context) {
    menulateralwebModel = createModel(context, () => MenulateralwebModel());
  }

  @override
  void dispose() {
    menulateralwebModel.dispose();
    paginatedDataTableController.dispose();
  }
}

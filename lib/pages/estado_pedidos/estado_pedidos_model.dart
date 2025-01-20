import '/backend/supabase/supabase.dart';
import '/componentes/menulateralweb/menulateralweb_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'estado_pedidos_widget.dart' show EstadoPedidosWidget;
import 'package:flutter/material.dart';

class EstadoPedidosModel extends FlutterFlowModel<EstadoPedidosWidget> {
  ///  Local state fields for this page.

  String? estadopedido;

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

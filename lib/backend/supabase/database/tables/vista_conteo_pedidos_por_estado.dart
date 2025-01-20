import '../database.dart';

class VistaConteoPedidosPorEstadoTable
    extends SupabaseTable<VistaConteoPedidosPorEstadoRow> {
  @override
  String get tableName => 'vista_conteo_pedidos_por_estado';

  @override
  VistaConteoPedidosPorEstadoRow createRow(Map<String, dynamic> data) =>
      VistaConteoPedidosPorEstadoRow(data);
}

class VistaConteoPedidosPorEstadoRow extends SupabaseDataRow {
  VistaConteoPedidosPorEstadoRow(super.data);

  @override
  SupabaseTable get table => VistaConteoPedidosPorEstadoTable();

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);
}

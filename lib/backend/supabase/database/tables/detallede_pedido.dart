import '../database.dart';

class DetalledePedidoTable extends SupabaseTable<DetalledePedidoRow> {
  @override
  String get tableName => 'DetalledePedido';

  @override
  DetalledePedidoRow createRow(Map<String, dynamic> data) =>
      DetalledePedidoRow(data);
}

class DetalledePedidoRow extends SupabaseDataRow {
  DetalledePedidoRow(super.data);

  @override
  SupabaseTable get table => DetalledePedidoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get rubro => getField<String>('rubro');
  set rubro(String? value) => setField<String>('rubro', value);

  String? get necesidad => getField<String>('necesidad');
  set necesidad(String? value) => setField<String>('necesidad', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);

  String? get observaciones => getField<String>('observaciones');
  set observaciones(String? value) => setField<String>('observaciones', value);

  int? get idPedido => getField<int>('idPedido');
  set idPedido(int? value) => setField<int>('idPedido', value);

  int? get idPersona => getField<int>('idPersona');
  set idPersona(int? value) => setField<int>('idPersona', value);
}

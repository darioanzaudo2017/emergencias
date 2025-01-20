import '../database.dart';

class ProductosTable extends SupabaseTable<ProductosRow> {
  @override
  String get tableName => 'Productos';

  @override
  ProductosRow createRow(Map<String, dynamic> data) => ProductosRow(data);
}

class ProductosRow extends SupabaseDataRow {
  ProductosRow(super.data);

  @override
  SupabaseTable get table => ProductosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get rubro => getField<String>('rubro');
  set rubro(String? value) => setField<String>('rubro', value);

  String? get necesidad => getField<String>('necesidad');
  set necesidad(String? value) => setField<String>('necesidad', value);

  bool? get estado => getField<bool>('estado');
  set estado(bool? value) => setField<bool>('estado', value);
}

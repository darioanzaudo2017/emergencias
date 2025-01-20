import '../database.dart';

class BarriosTable extends SupabaseTable<BarriosRow> {
  @override
  String get tableName => 'Barrios';

  @override
  BarriosRow createRow(Map<String, dynamic> data) => BarriosRow(data);
}

class BarriosRow extends SupabaseDataRow {
  BarriosRow(super.data);

  @override
  SupabaseTable get table => BarriosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nombreBarrio => getField<String>('NombreBarrio');
  set nombreBarrio(String? value) => setField<String>('NombreBarrio', value);
}

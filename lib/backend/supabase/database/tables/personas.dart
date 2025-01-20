import '../database.dart';

class PersonasTable extends SupabaseTable<PersonasRow> {
  @override
  String get tableName => 'Personas';

  @override
  PersonasRow createRow(Map<String, dynamic> data) => PersonasRow(data);
}

class PersonasRow extends SupabaseDataRow {
  PersonasRow(super.data);

  @override
  SupabaseTable get table => PersonasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nombreCompleto => getField<String>('nombreCompleto');
  set nombreCompleto(String? value) =>
      setField<String>('nombreCompleto', value);

  String? get dni => getField<String>('dni');
  set dni(String? value) => setField<String>('dni', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  String? get genero => getField<String>('genero');
  set genero(String? value) => setField<String>('genero', value);
}

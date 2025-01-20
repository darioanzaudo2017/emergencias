import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'Usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(super.data);

  @override
  SupabaseTable get table => UsuariosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get nombreCompleto => getField<String>('nombreCompleto');
  set nombreCompleto(String? value) =>
      setField<String>('nombreCompleto', value);

  double? get dni => getField<double>('dni');
  set dni(double? value) => setField<double>('dni', value);

  String? get rol => getField<String>('rol');
  set rol(String? value) => setField<String>('rol', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);
}

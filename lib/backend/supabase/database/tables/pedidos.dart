import '../database.dart';

class PedidosTable extends SupabaseTable<PedidosRow> {
  @override
  String get tableName => 'Pedidos';

  @override
  PedidosRow createRow(Map<String, dynamic> data) => PedidosRow(data);
}

class PedidosRow extends SupabaseDataRow {
  PedidosRow(super.data);

  @override
  SupabaseTable get table => PedidosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get coordenadas => getField<String>('coordenadas');
  set coordenadas(String? value) => setField<String>('coordenadas', value);

  String? get barrio => getField<String>('barrio');
  set barrio(String? value) => setField<String>('barrio', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  bool? get discapacidad => getField<bool>('discapacidad');
  set discapacidad(bool? value) => setField<bool>('discapacidad', value);

  String? get procedencia => getField<String>('procedencia');
  set procedencia(String? value) => setField<String>('procedencia', value);

  String? get observaciones => getField<String>('observaciones');
  set observaciones(String? value) => setField<String>('observaciones', value);

  String? get subsecretaria => getField<String>('subsecretaria');
  set subsecretaria(String? value) => setField<String>('subsecretaria', value);

  String? get responsable => getField<String>('Responsable');
  set responsable(String? value) => setField<String>('Responsable', value);

  String? get ultModificacion => getField<String>('ultModificacion');
  set ultModificacion(String? value) =>
      setField<String>('ultModificacion', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  int? get idPersona => getField<int>('idPersona');
  set idPersona(int? value) => setField<int>('idPersona', value);

  String? get nombreCompleto => getField<String>('nombreCompleto');
  set nombreCompleto(String? value) =>
      setField<String>('nombreCompleto', value);

  String? get dni => getField<String>('dni');
  set dni(String? value) => setField<String>('dni', value);

  String? get idUsuario => getField<String>('idUsuario');
  set idUsuario(String? value) => setField<String>('idUsuario', value);

  DateTime? get fechaEntrega => getField<DateTime>('fechaEntrega');
  set fechaEntrega(DateTime? value) =>
      setField<DateTime>('fechaEntrega', value);

  String? get nombreVehiculo => getField<String>('nombreVehiculo');
  set nombreVehiculo(String? value) =>
      setField<String>('nombreVehiculo', value);

  String? get entregador => getField<String>('entregador');
  set entregador(String? value) => setField<String>('entregador', value);

  String? get obsEntrerga => getField<String>('obsEntrerga');
  set obsEntrerga(String? value) => setField<String>('obsEntrerga', value);
}

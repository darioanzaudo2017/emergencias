import '../database.dart';

class VehiculosTable extends SupabaseTable<VehiculosRow> {
  @override
  String get tableName => 'Vehiculos';

  @override
  VehiculosRow createRow(Map<String, dynamic> data) => VehiculosRow(data);
}

class VehiculosRow extends SupabaseDataRow {
  VehiculosRow(super.data);

  @override
  SupabaseTable get table => VehiculosTable();

  int get idVehiculo => getField<int>('idVehiculo')!;
  set idVehiculo(int value) => setField<int>('idVehiculo', value);

  String? get tipoVehiculo => getField<String>('tipoVehiculo');
  set tipoVehiculo(String? value) => setField<String>('tipoVehiculo', value);

  String? get patente => getField<String>('patente');
  set patente(String? value) => setField<String>('patente', value);

  String? get nombre => getField<String>('Nombre');
  set nombre(String? value) => setField<String>('Nombre', value);

  bool? get estado => getField<bool>('estado');
  set estado(bool? value) => setField<bool>('estado', value);
}

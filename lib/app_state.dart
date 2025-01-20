import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<ApicallbuscarStruct> _listapedidos = [];
  List<ApicallbuscarStruct> get listapedidos => _listapedidos;
  set listapedidos(List<ApicallbuscarStruct> value) {
    _listapedidos = value;
  }

  void addToListapedidos(ApicallbuscarStruct value) {
    listapedidos.add(value);
  }

  void removeFromListapedidos(ApicallbuscarStruct value) {
    listapedidos.remove(value);
  }

  void removeAtIndexFromListapedidos(int index) {
    listapedidos.removeAt(index);
  }

  void updateListapedidosAtIndex(
    int index,
    ApicallbuscarStruct Function(ApicallbuscarStruct) updateFn,
  ) {
    listapedidos[index] = updateFn(_listapedidos[index]);
  }

  void insertAtIndexInListapedidos(int index, ApicallbuscarStruct value) {
    listapedidos.insert(index, value);
  }

  List<PedidosPorPersonaStruct> _Listadepedidos = [];
  List<PedidosPorPersonaStruct> get Listadepedidos => _Listadepedidos;
  set Listadepedidos(List<PedidosPorPersonaStruct> value) {
    _Listadepedidos = value;
  }

  void addToListadepedidos(PedidosPorPersonaStruct value) {
    Listadepedidos.add(value);
  }

  void removeFromListadepedidos(PedidosPorPersonaStruct value) {
    Listadepedidos.remove(value);
  }

  void removeAtIndexFromListadepedidos(int index) {
    Listadepedidos.removeAt(index);
  }

  void updateListadepedidosAtIndex(
    int index,
    PedidosPorPersonaStruct Function(PedidosPorPersonaStruct) updateFn,
  ) {
    Listadepedidos[index] = updateFn(_Listadepedidos[index]);
  }

  void insertAtIndexInListadepedidos(int index, PedidosPorPersonaStruct value) {
    Listadepedidos.insert(index, value);
  }

  List<PedidoUnicoStruct> _listpedidounico = [];
  List<PedidoUnicoStruct> get listpedidounico => _listpedidounico;
  set listpedidounico(List<PedidoUnicoStruct> value) {
    _listpedidounico = value;
  }

  void addToListpedidounico(PedidoUnicoStruct value) {
    listpedidounico.add(value);
  }

  void removeFromListpedidounico(PedidoUnicoStruct value) {
    listpedidounico.remove(value);
  }

  void removeAtIndexFromListpedidounico(int index) {
    listpedidounico.removeAt(index);
  }

  void updateListpedidounicoAtIndex(
    int index,
    PedidoUnicoStruct Function(PedidoUnicoStruct) updateFn,
  ) {
    listpedidounico[index] = updateFn(_listpedidounico[index]);
  }

  void insertAtIndexInListpedidounico(int index, PedidoUnicoStruct value) {
    listpedidounico.insert(index, value);
  }
}

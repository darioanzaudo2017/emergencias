// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

// Definir la clase Detalle
class Detalle {
  final String rubro;
  final String necesidad;
  final int cantidad;

  Detalle(
      {required this.rubro, required this.necesidad, required this.cantidad});

  // Convertir de Map<String, dynamic> a Detalle
  factory Detalle.fromMap(Map<String, dynamic> map) {
    return Detalle(
      rubro: map['rubro'] ?? 'Desconocido',
      necesidad: map['necesidad'] ?? 'Desconocido',
      cantidad: (map['cantidad'] ?? 0) as int,
    );
  }
}

Future pdfmemo(
  int? id,
  String? barrio,
  String? direccion,
  String? observaciones,
  String? telefono,
  String? nombreCompleto,
  String? dni,
  List<PedidosPorPersonaStruct>? listadetalle,
  String? imagen,
) async {
  // Crear documento PDF
  final pdf = pw.Document();

  // Función para cargar una imagen desde una URL
  Future<pw.ImageProvider> loadNetworkImage(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return pw.MemoryImage(response.bodyBytes);
    } else {
      throw Exception('Error al cargar la imagen desde la red');
    }
  }

  // Cargar imagen si está disponible
  pw.ImageProvider? headerImage;
  if (imagen != null && imagen.isNotEmpty) {
    try {
      headerImage = await loadNetworkImage(imagen);
    } catch (e) {
      print('Error al cargar la imagen: $e');
    }
  }

  // Convertir listadetalle en una lista de Detalle
  List<Detalle> detalles = listadetalle
          ?.map((item) => Detalle.fromMap(item.toMap())) // Asegurar conversión
          .toList() ??
      [];

  // Construcción del contenido principal
  pw.Widget buildMainContent() {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        if (headerImage != null) pw.Image(headerImage),
        pw.SizedBox(height: 18),
        pw.Text(
          '''
Memo Nº: ${id ?? 'No especificado'}
Barrio Nº: ${barrio ?? 'No especificado'}
Dirección: ${direccion ?? 'No especificada'}
Observaciones: ${observaciones ?? 'No hay observaciones'}
Nombre completo: ${nombreCompleto ?? 'No especificado'}
DNI: ${dni ?? 'No especificado'}
Teléfono: ${telefono ?? 'No especificado'}

Detalle de Productos a entregar:
          '''
              .trim(),
          style: pw.TextStyle(fontSize: 14, lineSpacing: 1.5),
          textAlign: pw.TextAlign.justify,
        ),
      ],
    );
  }

  // Construcción de la tabla de detalles
  pw.Widget buildTable() {
    if (detalles.isEmpty) {
      return pw.Text('No hay datos disponibles.');
    } else {
      return pw.Table.fromTextArray(
        headers: ['Rubro', 'Necesidad', 'Cantidad'],
        data: detalles
            .map((item) => [
                  item.rubro,
                  item.necesidad,
                  item.cantidad
                      .toString() // Convertir a String para evitar errores
                ])
            .toList(),
        headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold),
        cellAlignment: pw.Alignment.centerLeft,
      );
    }
  }

  // Agregar contenido al PDF
  pdf.addPage(
    pw.MultiPage(
      build: (context) => [
        buildMainContent(),
        pw.SizedBox(height: 20),
        buildTable(),
      ],
      footer: (context) => pw.Text(
        'Página ${context.pageNumber} de ${context.pagesCount}',
        style: pw.TextStyle(fontSize: 12, color: PdfColors.grey),
      ),
    ),
  );

  // Generar e imprimir el PDF
  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}

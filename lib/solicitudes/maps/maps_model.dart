import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'maps_widget.dart' show MapsWidget;
import 'package:flutter/material.dart';

class MapsModel extends FlutterFlowModel<MapsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GooglePlacesAutocomplete)] action in Button widget.
  ApiCallResponse? apiResult0tt;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

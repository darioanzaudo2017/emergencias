import '/backend/supabase/supabase.dart';
import '/componentes/menulateralweb/menulateralweb_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'cargar_editar_persona_model.dart';
export 'cargar_editar_persona_model.dart';

class CargarEditarPersonaWidget extends StatefulWidget {
  const CargarEditarPersonaWidget({super.key});

  @override
  State<CargarEditarPersonaWidget> createState() =>
      _CargarEditarPersonaWidgetState();
}

class _CargarEditarPersonaWidgetState extends State<CargarEditarPersonaWidget> {
  late CargarEditarPersonaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CargarEditarPersonaModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FloatingActionButton(
            onPressed: () async {
              context.pushNamed(
                'NuevaPersona',
                extra: <String, dynamic>{
                  kTransitionInfoKey: const TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.fade,
                  ),
                },
              );
            },
            backgroundColor: FlutterFlowTheme.of(context).accent2,
            elevation: 8.0,
            child: Icon(
              Icons.add_rounded,
              color: FlutterFlowTheme.of(context).info,
              size: 36.0,
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Seleccionar Destinatario',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.menulateralwebModel,
                updateCallback: () => safeSetState(() {}),
                child: const MenulateralwebWidget(),
              ),
              Expanded(
                child: Container(
                  width: 800.0,
                  height: double.infinity,
                  constraints: const BoxConstraints(
                    maxWidth: 970.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x34090F13),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Buscar Persona ...',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                24.0, 12.0, 12.0, 12.0),
                                        prefixIcon: Icon(
                                          Icons.search_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: FutureBuilder<List<PersonasRow>>(
                                future: PersonasTable().queryRows(
                                  queryFn: (q) => q.order('nombreCompleto',
                                      ascending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<PersonasRow> containerPersonasRowList =
                                      snapshot.data!;

                                  return Container(
                                    width: 600.0,
                                    height: 650.0,
                                    constraints: const BoxConstraints(
                                      maxWidth: 970.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Builder(
                                      builder: (context) {
                                        final listaPersonas =
                                            containerPersonasRowList.toList();

                                        return FlutterFlowDataTable<
                                            PersonasRow>(
                                          controller: _model
                                              .paginatedDataTableController,
                                          data: listaPersonas,
                                          columnsBuilder: (onSortChanged) => [
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Text(
                                                  'Apellido y Nombre',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              fixedWidth:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.25,
                                            ),
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Text(
                                                  'DNI',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              fixedWidth:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.1,
                                            ),
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Text(
                                                  'Teléfono',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              fixedWidth:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.15,
                                            ),
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Text(
                                                  'Editar Datos',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              fixedWidth:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.1,
                                            ),
                                          ],
                                          dataRowBuilder: (listaPersonasItem,
                                                  listaPersonasIndex,
                                                  selected,
                                                  onSelectChanged) =>
                                              DataRow(
                                            color: WidgetStateProperty.all(
                                              listaPersonasIndex % 2 == 0
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondaryBackground
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            cells: [
                                              Text(
                                                valueOrDefault<String>(
                                                  listaPersonasItem
                                                      .nombreCompleto,
                                                  'Nombre',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  listaPersonasItem.dni,
                                                  'DNI',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  listaPersonasItem.telefono,
                                                  'Teléfono',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            context.pushNamed(
                                                              'EditarPersona',
                                                              queryParameters: {
                                                                'editarpersona':
                                                                    serializeParam(
                                                                  listaPersonasItem,
                                                                  ParamType
                                                                      .SupabaseRow,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    const TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                ),
                                                              },
                                                            );
                                                          },
                                                          text: 'Editar',
                                                          options:
                                                              FFButtonOptions(
                                                            height: 40.0,
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            iconPadding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ].map((c) => DataCell(c)).toList(),
                                          ),
                                          paginated: true,
                                          selectable: false,
                                          hidePaginator: false,
                                          showFirstLastButtons: false,
                                          headingRowHeight: 56.0,
                                          dataRowHeight: 70.0,
                                          columnSpacing: 20.0,
                                          headingRowColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          addHorizontalDivider: true,
                                          addTopAndBottomDivider: false,
                                          hideDefaultHorizontalDivider: true,
                                          horizontalDividerColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          horizontalDividerThickness: 1.0,
                                          addVerticalDivider: false,
                                        );
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

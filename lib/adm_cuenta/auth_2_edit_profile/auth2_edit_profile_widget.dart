import '/adm_cuenta/edit_profile_auth_2/edit_profile_auth2_widget.dart';
import '/componentes/menulateralweb/menulateralweb_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'auth2_edit_profile_model.dart';
export 'auth2_edit_profile_model.dart';

class Auth2EditProfileWidget extends StatefulWidget {
  const Auth2EditProfileWidget({super.key});

  @override
  State<Auth2EditProfileWidget> createState() => _Auth2EditProfileWidgetState();
}

class _Auth2EditProfileWidgetState extends State<Auth2EditProfileWidget> {
  late Auth2EditProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Auth2EditProfileModel());

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Editar Perfil',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            wrapWithModel(
              model: _model.menulateralwebModel,
              updateCallback: () => safeSetState(() {}),
              child: const MenulateralwebWidget(),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.9,
                constraints: const BoxConstraints(
                  maxWidth: 970.0,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: wrapWithModel(
                  model: _model.editProfileAuth2Model,
                  updateCallback: () => safeSetState(() {}),
                  child: EditProfileAuth2Widget(
                    title: 'Edit Profile',
                    confirmButtonText: 'Save Changes',
                    navigateAction: () async {
                      context.safePop();
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

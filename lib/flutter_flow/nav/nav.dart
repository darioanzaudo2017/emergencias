import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? const EstadoPedidosWidget()
          : const Auth2LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const EstadoPedidosWidget()
              : const Auth2LoginWidget(),
        ),
        FFRoute(
          name: 'auth_2_Create',
          path: '/auth2Create',
          builder: (context, params) => const Auth2CreateWidget(),
        ),
        FFRoute(
          name: 'auth_2_Login',
          path: '/auth2Login',
          builder: (context, params) => const Auth2LoginWidget(),
        ),
        FFRoute(
          name: 'auth_2_ForgotPassword',
          path: '/auth2ForgotPassword',
          builder: (context, params) => const Auth2ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'auth_2_EditProfile',
          path: '/auth2EditProfile',
          builder: (context, params) => const Auth2EditProfileWidget(),
        ),
        FFRoute(
          name: 'HerramientasAdministrativas',
          path: '/herramientasAdministrativas',
          requireAuth: true,
          builder: (context, params) => const HerramientasAdministrativasWidget(),
        ),
        FFRoute(
          name: 'ListadeUsuariosSinAsignar',
          path: '/listadeUsuariosSinAsignar',
          requireAuth: true,
          builder: (context, params) => const ListadeUsuariosSinAsignarWidget(),
        ),
        FFRoute(
          name: 'DetalleRol',
          path: '/detalleRol',
          requireAuth: true,
          builder: (context, params) => DetalleRolWidget(
            idUsuario: params.getParam<UsuariosRow>(
              'idUsuario',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'ListadeUsuarios',
          path: '/ListaUsuarios',
          requireAuth: true,
          builder: (context, params) => const ListadeUsuariosWidget(),
        ),
        FFRoute(
          name: 'Solicitudes',
          path: '/solicitudes',
          requireAuth: true,
          builder: (context, params) => const SolicitudesWidget(),
        ),
        FFRoute(
          name: 'PaneldeEntregas',
          path: '/paneldeEntregas',
          requireAuth: true,
          builder: (context, params) => const PaneldeEntregasWidget(),
        ),
        FFRoute(
          name: 'AutorizarPedidos',
          path: '/autorizarPedidos',
          requireAuth: true,
          builder: (context, params) => const AutorizarPedidosWidget(),
        ),
        FFRoute(
          name: 'PedidoNuevo',
          path: '/pedidoNuevo',
          requireAuth: true,
          builder: (context, params) => PedidoNuevoWidget(
            personaNueva: params.getParam<PersonasRow>(
              'personaNueva',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'Productos',
          path: '/productos',
          requireAuth: true,
          builder: (context, params) => const ProductosWidget(),
        ),
        FFRoute(
          name: 'NuevoProducto',
          path: '/nuevoProducto',
          requireAuth: true,
          builder: (context, params) => const NuevoProductoWidget(),
        ),
        FFRoute(
          name: 'EditarProducto',
          path: '/editarProducto',
          requireAuth: true,
          builder: (context, params) => EditarProductoWidget(
            editarproducto: params.getParam<ProductosRow>(
              'editarproducto',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'CargarPersona',
          path: '/cargarPersona',
          requireAuth: true,
          builder: (context, params) => const CargarPersonaWidget(),
        ),
        FFRoute(
          name: 'NuevaPersona',
          path: '/nuevaPersona',
          requireAuth: true,
          builder: (context, params) => const NuevaPersonaWidget(),
        ),
        FFRoute(
          name: 'EditarPersona',
          path: '/editarPersona',
          requireAuth: true,
          builder: (context, params) => EditarPersonaWidget(
            editarpersona: params.getParam<PersonasRow>(
              'editarpersona',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'CargarArticulos',
          path: '/cargarArticulos',
          requireAuth: true,
          builder: (context, params) => CargarArticulosWidget(
            detallePedido: params.getParam<PedidosRow>(
              'detallePedido',
              ParamType.SupabaseRow,
            ),
            detallePersona: params.getParam<PersonasRow>(
              'detallePersona',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'VerPedido',
          path: '/verPedido',
          requireAuth: true,
          builder: (context, params) => VerPedidoWidget(
            idPedido: params.getParam<PedidosRow>(
              'idPedido',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'EstadoPedidos',
          path: '/estadoPedidos',
          requireAuth: true,
          builder: (context, params) => const EstadoPedidosWidget(),
        ),
        FFRoute(
          name: 'detalleAutorizarPedido',
          path: '/detalleAutorizarPedido',
          requireAuth: true,
          builder: (context, params) => DetalleAutorizarPedidoWidget(
            idPedido: params.getParam<PedidosRow>(
              'idPedido',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'AsignarPedidos',
          path: '/asignarPedidos',
          requireAuth: true,
          builder: (context, params) => const AsignarPedidosWidget(),
        ),
        FFRoute(
          name: 'detalleAsignarPedido',
          path: '/detalleAsignarPedido',
          requireAuth: true,
          builder: (context, params) => DetalleAsignarPedidoWidget(
            idPedido: params.getParam<PedidosRow>(
              'idPedido',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'Asignacion',
          path: '/asignacion',
          builder: (context, params) => AsignacionWidget(
            idPedido: params.getParam<PedidosRow>(
              'idPedido',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'Vehiculos',
          path: '/vehiculos',
          requireAuth: true,
          builder: (context, params) => const VehiculosWidget(),
        ),
        FFRoute(
          name: 'NuevoVehiculo',
          path: '/nuevoVehiculo',
          requireAuth: true,
          builder: (context, params) => const NuevoVehiculoWidget(),
        ),
        FFRoute(
          name: 'EditarVehiculo',
          path: '/editarVehiculo',
          requireAuth: true,
          builder: (context, params) => EditarVehiculoWidget(
            editarVehiculo: params.getParam<VehiculosRow>(
              'editarVehiculo',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'detallePanelEntrega',
          path: '/detallePanelEntrega',
          requireAuth: true,
          builder: (context, params) => DetallePanelEntregaWidget(
            idPedido: params.getParam<PedidosRow>(
              'idPedido',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'CargarEditarPersona',
          path: '/cargarEditarPersona',
          requireAuth: true,
          builder: (context, params) => const CargarEditarPersonaWidget(),
        ),
        FFRoute(
          name: 'Ayuda',
          path: '/ayuda',
          requireAuth: true,
          builder: (context, params) => const AyudaWidget(),
        ),
        FFRoute(
          name: 'SolicitudesEliminar',
          path: '/solicitudesEliminar',
          requireAuth: true,
          builder: (context, params) => const SolicitudesEliminarWidget(),
        ),
        FFRoute(
          name: 'HistorialPedidos',
          path: '/historialPedidos',
          requireAuth: true,
          builder: (context, params) => const HistorialPedidosWidget(),
        ),
        FFRoute(
          name: 'HistorialPedidos2',
          path: '/historialPedidos2',
          requireAuth: true,
          builder: (context, params) => HistorialPedidos2Widget(
            idPersona: params.getParam<PersonasRow>(
              'idPersona',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'VerPedidoHistorial',
          path: '/verPedidoHistorial',
          requireAuth: true,
          builder: (context, params) => VerPedidoHistorialWidget(
            idPedido: params.getParam<PedidosRow>(
              'idPedido',
              ParamType.SupabaseRow,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/auth2Login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}

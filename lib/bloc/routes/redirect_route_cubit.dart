import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'redirect_route_state.dart';

class RedirectRouteCubit extends Cubit<RedirectRouteState> {
  RedirectRouteCubit() : super(RedirectRouteInitial());

  String? desiredRoute;

  void setDesiredRoute(String route) {
    desiredRoute = route;
    dev.log('Desired route: $route', name: 'RouteCubit');
  }

  void resetDesiredRoute() {
    desiredRoute = null;
    dev.log('Desired route reset', name: 'RouteCubit');
  }

  bool isDesiredRouteSet() {
    return desiredRoute != null;
  }
}

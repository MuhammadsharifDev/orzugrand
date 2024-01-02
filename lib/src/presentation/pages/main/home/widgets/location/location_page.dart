import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orzu_grand/src/core/utils/app_colors.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../../../bloc/home/home_bloc.dart';

class CurrentLocationPage extends StatefulWidget {
  const CurrentLocationPage({super.key});

  @override
  State<CurrentLocationPage> createState() => _CurrentLocationPageState();
}

class _CurrentLocationPageState extends State<CurrentLocationPage> {
  late Completer<YandexMapController> mapController =
  Completer<YandexMapController>();

  Future<void> moveCamera(Point? point) async {
    if (point == null) return;
    await (await mapController.future).moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          zoom: 16,
          target: point,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return YandexMap(
          scrollGesturesEnabled: true,
          zoomGesturesEnabled: true,
          onMapCreated: (controller) async {
            mapController.complete(controller);
            moveCamera(state.point);
          },
        );
      },
    );
  }
}

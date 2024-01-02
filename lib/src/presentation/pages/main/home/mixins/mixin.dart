import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orzu_grand/src/presentation/bloc/home/home_bloc.dart';

import '../home_page.dart';

mixin HomeMixin on State<HomePage> {
  late final TabController tabController;
  late final TextEditingController searchController;

  void initController(TickerProvider vsync) {
    tabController = TabController(
      length: 3,
      vsync: vsync,
    );
    searchController=TextEditingController();
  }

  void startTime() {
    Timer.periodic(
      const Duration(seconds: 1),
          (timer) {
        context.read<HomeBloc>().add(const TimerEvent());
      },
    );
  }

  @override
  void dispose() {
    startTime();
    searchController.dispose();
    tabController.dispose();
    super.dispose();
  }
}

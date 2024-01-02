import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orzu_grand/src/core/utils/app_colors.dart';
import 'package:orzu_grand/src/core/utils/app_icons.dart';

import '../../bloc/main/main_bloc.dart';
import 'home/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state.bottomMenu.index,
            children: const [
              HomePage(),
              Scaffold(),
              Scaffold(),
              Scaffold(),
              Scaffold(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.bottomMenu.index,
            onTap: (index) {
              context
                  .read<MainBloc>()
                  .add(SetBottomMenuEvent(menu: BottomMenu.values[index]));
            },
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.home), label: 'Главная'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.search_2), label: 'Каталог'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.basket2), label: 'Корзина'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.favourite),
                  label: 'Избранное'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.person), label: 'Профиль'),
            ],
            unselectedItemColor: Colors.grey,
            selectedItemColor: AppColors.orange,
          ),
        );
      },
    );
  }
}

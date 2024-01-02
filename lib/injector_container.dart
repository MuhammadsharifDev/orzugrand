
import 'package:get_it/get_it.dart';
import 'package:orzu_grand/src/presentation/bloc/home/home_bloc.dart';
import 'package:orzu_grand/src/presentation/bloc/main/main_bloc.dart';

final sl = GetIt.instance;
//late Box<dynamic> _box;

Future<void> init() async {

  /// main
  mainFeature();
}

void mainFeature() {
  sl
      ..registerSingleton<MainBloc>(MainBloc())
      ..registerSingleton<HomeBloc>(HomeBloc());
}

// void homeFeature() {
//   sl.registerFactory<HomeBloc>(HomeBloc.new);
// }
//
// void registerFeature() {
//   sl
//     ..registerFactory<RegisterBloc>(() => RegisterBloc(sl()))
//     ..registerLazySingleton<RegisterUserRepository>(
//           () => RegisterUserRepositoryImpl(dio: sl()),
//     );
// }
//
// void authFeature() {
//   sl
//     ..registerFactory<AuthBloc>(() => AuthBloc(sl()))
//     ..registerFactory<ConfirmCodeBloc>(() => ConfirmCodeBloc(sl()))
//     ..registerLazySingleton<AuthRepository>(
//           () => AuthRepositoryImpl(dio: sl()),
//     );
// }
//
// Future<void> initHive() async {
//   const boxName = 'bloc_mobile_box';
//   final Directory directory = await getApplicationDocumentsDirectory();
//   Hive.init(directory.path);
//   _box = await Hive.openBox<dynamic>(boxName);
// }

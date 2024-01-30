import 'package:bloc/bloc.dart';
import 'package:flutter_cubit/server/cubit/app_state.dart';

class AppCubit extends Cubit<AppState> {
  final DataService dataService;
  AppCubit((required this.dataService)) : super(LoadingState());


  void loadWelcomePage() {
    emit(LoadingState());
    var welcomes = await dataService.getAllWelcome();

  }
}
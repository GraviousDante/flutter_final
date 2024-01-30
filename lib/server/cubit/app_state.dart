import '../model/welcome_model.dart';

abstract class AppState {}

class LoadingState extends AppState {}

class WelcomeLoadedState extends AppState {
  final List<WelcomeModel> welcomes;
  WelcomeLoadedState(required this.welcomes);
}
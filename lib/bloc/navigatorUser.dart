import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNav extends Cubit<int> {
  BottomNav() : super(0);

  void updateIndex(int index) => emit(index);

  void getHome() => emit(0);
  void getHistory() => emit(1);
  void getProfile() => emit(2);
}

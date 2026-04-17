import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_bloc_0021/viewmodel/userevent.dart';
import 'package:mvvm_bloc_0021/viewmodel/userstate.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState()) {
    on<NamaChanged>((event, emit) {
      emit(state.copyWith(nama: event.nama));
    });

   
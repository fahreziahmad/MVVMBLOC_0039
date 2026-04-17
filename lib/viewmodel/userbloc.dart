import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvmbloc_0039/viewmodel/userevent.dart';
import 'package:mvvmbloc_0039/viewmodel/userstate.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState()) {
    on<NamaChanged>((event, emit) {
      emit(state.copyWith(nama: event.nama));
    });

    on<EmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email));
    });
  }
}
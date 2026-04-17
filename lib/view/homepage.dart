import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_bloc_0021/viewmodel/userbloc.dart';
import 'package:mvvm_bloc_0021/viewmodel/userevent.dart';
import 'package:mvvm_bloc_0021/viewmodel/userstate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MVVM with BLoC Example')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Masukkan Nama'),
              onChanged: (value) {
                context.read<UserBloc>().add(NamaChanged(value));
              },
              ),
            TextField(
              decoration: const InputDecoration(labelText: 'Masukkan Email'),
              onChanged: (value) {
                context.read<UserBloc>().add(EmailChanged(value));
              },
            ),
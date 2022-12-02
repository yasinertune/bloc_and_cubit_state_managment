import 'package:bloc_and_cubit_state_managment/blocs/bloc/counter_bloc.dart';
import 'package:bloc_and_cubit_state_managment/blocs/cubit/counter_cubit.dart';
import 'package:bloc_and_cubit_state_managment/view/bloc_view.dart';
import 'package:bloc_and_cubit_state_managment/view/cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyBlocAndCubit());
}

class MyCubit extends StatelessWidget {
  const MyCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        home: CubitView(),
      ),
    );
  }
}

class MyBlocAndCubit extends StatelessWidget {
  const MyBlocAndCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => CounterBloc()),
          BlocProvider(create: (context) => CounterCubit())
        ],
        child:  const MaterialApp(
          home: BlocView(),
      ),
    );
  }
}

//BlocProvider yerine MultiBlocProvider da kullanabiliriz. Birden fazla bloc tanımlayacaksak Multi olarak kullanıyoruz


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/bloc/counter_bloc.dart';

class BlocView extends StatelessWidget {
  const BlocView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bloc Kullanımı")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Bloc ile Sayaç uygulaması"),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(state.counter.toString(),
                    style: Theme.of(context).textTheme.headline4);
              },
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(IncrementEvent());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(DecrementEvent());
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.minimize_rounded),
          ),
        ],
      ),
    );
  }
}

///Bloc builder ile sadece değişecek olan kısmı sarmalıyoruz.Bu sayede sadece değişecek kısım tetikleniyor ve diğer kısımlar tekrar güncellenmiyor

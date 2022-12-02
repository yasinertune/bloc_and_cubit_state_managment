import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

//Fonksiyonlarımızı bu sayfada yazıyoruz
//CounterState içinde değişkenlerimiz var ve bu değşkenlere "state" yazarak erişiyoruz.
class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitial(initialValue: 0));
  //başlangıç değerini 0 olarak atadık.

  void increment(){
    emit(MyCounterstate(counterValue: state.counter + 1));
  }

  void decrement(){
    emit(MyCounterstate(counterValue: state.counter - 1));
  }
}


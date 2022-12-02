import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial(initialValue: 10)) {

    ///Eventler de tanımladığımız alanları burada dolduruyoruz.
    ///IncrementEvent ve DecrementEvent'i Eventler kısmında tanımlamıştık.
    ///MyCounterState sınıfının içindeki counterValue değişkenine veriyi yolluyoruz.
    ///Emit ile state değerini ilgili State'e yolluyoruz.
    on<IncrementEvent>((event, emit) {
      emit(MyCounterState(counterValue: state.counter + 1 ));
    });

    on<DecrementEvent>((event, emit) {
      emit(MyCounterState(counterValue: state.counter - 1 ));
    });
  }
}

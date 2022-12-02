part of 'counter_bloc.dart';


//Bloc yapsında Eventler girer Stateler çıkar
//Bu sayfada Event yani fonksiyonlarımızı yazıyoruz.



@immutable
abstract class CounterEvent {}

class IncrementEvent extends CounterEvent{

}
class DecrementEvent extends CounterEvent{

}

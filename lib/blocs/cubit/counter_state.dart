part of 'counter_cubit.dart';




//Final anahtar kelimesi: İlgili değişken uygulama içinde çağrıldığında oluşturulur.
//Const anahtar kelimesi: Uygulama çalıştırılır çalıştırılmaz bellekte yer tutar ve oluşturulur.
//İlgil sayfaya ait Stateler(değişkenler) abstract classta tutuluyor.
@immutable
abstract class CounterState {
  final int counter;
  const CounterState({required this.counter});
}


//CounterInitial: Uygulama ilk başladığında sayaç değeri hangi sayıyla başlayacak onu tutar. Yani state, ilk değerini burdan alır.
//super fonksiyonu ile bir üst sınıfa erişerek sayaç değerine dışarıda gelen başlangıç değerini atıyoruz.
class CounterInitial extends CounterState {
  const CounterInitial({required int initialValue}):super(counter: initialValue);
}


//Butona basınca arttırıp azaltma işlemi yapmak içinde MyCounterState isimli sınıfı oluşturduk.
//Bu sınıfta da Counterstate i extends ederek onun özelliklerini aldık. Yani bir "counter" değişkenine sayı tanımlamamız gerekiyr ve
class MyCounterstate extends CounterState{
  MyCounterstate({required int counterValue}):super(counter: counterValue);

}



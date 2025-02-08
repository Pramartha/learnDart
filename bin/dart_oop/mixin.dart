import 'data/multimedia.dart';

void main(List<String> args) {
  ///Mixin
/**
 * Mixin merupakan cara copy-paste tanpa copy paste
 * Mixin berarti copy dan paste semua yang ada di dalam mixin kedalam sebuah class
 * Dalam hal ini bukan pewarisan melainkan cseperti copy-paste
 * Dengan demikian bila terjadi perubahan maka cukup melakukan perubahan satu kali saja pada mixin dan semua yang menggunakannya secara tidak langsung juga akan berubah
 * Untuk menggunakan Mixin cukup dengan keyword "mixin" diikuti nama mixinnya
 * Jika kita ingin membatasi penggunaan mixin maka bisa menggunakan kata kunci "on" diikuti nama class yang boleh menggunakannya (class tersebut atau turunannya) 
 * NB : Jika ada inheritence ataupun ineterface bisa dilakukan seperti contoh ini,
 * class Car extends Merek with Playable, Stoppable{}
 */
  var audio = Audio();
  audio.name = "Belajar Dart";
  audio.play();
  audio.stop();

  var video = Video();
  video.name = "Test Video";
  video.stop();
}

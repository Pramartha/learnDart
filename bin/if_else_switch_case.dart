void main() {
  // ///If
  // /**
  //  * If merupakan percabangan yang akan di eksekusi jika kondisinya terpenuhi
  //  * If-else merupakan percabangan dimana jika suatu kondisi terpenuhi maka if akan di jalankan
  //  * sedangkan jika kondisi tidak terpenuhi maka else yang akan di jalankan
  //  * Switch merupakan percabangan yang akan berjalan sesuai dengan kondisi apa yang terpenuhi
  //  * jika tidak ada kondisi yang terpenuhi maka default yang akan di jalankan
  //  * dalam switch memerlukan adanya break untuk mencegah terjadinya fall-off
  //  */
  // var nilai = 70;
  // var absen = 15;

  // print('nilai anda adalah : $nilai dan absen anda adalah : $absen');
  // if (nilai > 75 && absen >= 10) {
  //   print('anda lulus');
  // }

  // nilai = 40;
  // absen = 8;

  // print('nilai anda adalah : $nilai dan absen anda adalah : $absen');
  // if (nilai > 75 && absen >= 10) {
  //   print('anda lulus');
  // } else {
  //   print('anda tidak lulus');
  // }

  // nilai = 60;
  // print(nilai);
  // if (nilai >= 80) {
  //   print('nilai anda A');
  // } else if (nilai >= 70) {
  //   print('nilai anda B');
  // } else if (nilai >= 60) {
  //   print('nilai anda C');
  // } else if (nilai >= 50) {
  //   print('nilai anda D');
  // } else {
  //   print('nilai anda E');
  // }

  // var nilaiHuruf = 'B'; //Kondisi fall-off
  // print(nilaiHuruf);

  // switch (nilaiHuruf) {
  //   case 'A':
  //     print('Kamu Cumlaude');
  //     break;
  //   case 'B':
  //   case 'C':
  //     print('Kamu Lulus');
  //     break;
  //   case 'D':
  //     print('Kamu Tidak Lulus');
  //     break;
  //   default:
  //     print('Kamu Salah Jurusan');
  // }

  ///Ternary Operator
  /**
   * ternary operator merupakan cara yang dapat dilakukan mirip seperti if else
   * jika suatu kondisi bernilai true maka akan di ambil nilai pertamanya
   * jika suatu kondisi bernilai false maka akan di ambil nilai ke-dua nya
   */

  int nilaiAkhir = 70;

  if (nilaiAkhir >= 70) {
    print('Anda Lulus');
  } else {
    print('Anda Tidak Lulus');
  } //kondisi if else ini dapat di persingkat dengan ternarry operator

  var ucapan = nilaiAkhir >= 70 ? 'Anda Lulus' : 'Anda Tidak Lulus';
  print(ucapan);
}

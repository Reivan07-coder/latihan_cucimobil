import 'dart:ffi';
import 'dart:io';

void main (){
  var jalan=true;
  String plat;
  
 void tambahlist(){
    // jika ketiga pos lagi kosong maka masuk dulu
    // jika semua pos penuh maka masuk waiting list
    stdout.writeln('Masukan nomor kendaraan');
    String plat =stdin.readLineSync()!;

  }
  

  
  void showlist(){
    //perulangan for, for in, for each
    List  waitinglist=[];
  Map PosA ={'plat':null};
  Map PosB ={'plat':null};
  Map PosC ={'plat':null};
  waitinglist.add(PosA);
  print(waitinglist);
  }

  void showpos (){
    //tampil a, tampil b, tampil c
  }

  void finishpos(){
    //tanya user hapus pos berapa?
    // jika pos A dihapus
    // maka pos A jadikan null, pos A diisi  dengan list pertama, list pertama dihapus
    // jika pos B dihapus
    // maka pos B jadikan null, pos B diisi  dengan list pertama, list pertama 
    // jika pos C dihapus
    // maka pos C jadikan null, pos C diisi  dengan list pertama, list pertama dihapus

  }

  void keluar (){
    exit(0);
  }
 while(jalan == true){
// tampil menu dulu
// tanya user pilih menu mana
// switch case
// case 1 -- tampil menu
// case 2 -- lihat waiting list
// case 3 -- lihat pos
// case 4 -- selesaikan pos
// case 5 -- keluar
 print("===========================");
  print("Wash & Clean");
  print("===========================");
  print ("Pilih menu:");
  print("1. Tambah Waiting List");
  print("2. Lihat Waiting List");
  print("3. Lihat Pos");
  print ("4. Selesaikan Pos");
  print ("5. Keluar");
  print("===========================");
  print ("Pilih menu (1/2/3/4/5):");
   int user = int.parse(stdin.readLineSync()!);
  switch (user) {
    case 1:
    tambahlist();
    break;
    case 2:
    showlist();
    break;
    case 3:
    showpos();
    break;
    case 4:
    finishpos();
    break;
    case 5:
    keluar();
    break;

  }
 }
  //batas coding
}
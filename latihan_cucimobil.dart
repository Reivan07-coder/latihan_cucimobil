import 'dart:io';

void main() {
  var jalan = true;
  String? plat;

  List<String> waitinglist = [];
  Map<String, String?> PosA = {'plat': null};
  Map<String, String?> PosB = {'plat': null};
  Map<String, String?> PosC = {'plat': null};

  void tambahlist() {
    stdout.writeln('Masukan nomor kendaraan');
    plat = stdin.readLineSync();

    // jika ketiga pos lagi kosong maka masuk dulu
    if (PosA['plat'] == null) {
      PosA['plat'] = plat;
    } else if (PosB['plat'] == null) {
      PosB['plat'] = plat;
    } else if (PosC['plat'] == null) {
      PosC['plat'] = plat;
    } else {
      waitinglist.add(plat!);
    }

    // jika semua pos penuh maka masuk waiting list
  }

  void showlist() {
    //perulangan for, for in, for
    if (waitinglist.isEmpty) {
      print("Waiting List Kosong");
      return;
    }

    waitinglist.forEach((element) {
      print("Waiting List: $element");
    });
  }

  void showpos() {
    //tampil a, tampil b, tampil c

    print("Pos A: ${PosA['plat'] ?? 'Kosong'}");
    print("Pos B: ${PosB['plat'] ?? 'Kosong'}");
    print("Pos C: ${PosC['plat'] ?? 'Kosong'}");
  }

  void finishpos() {
    //tanya user hapus pos berapa?
    print("Hapus pos berapa? (A/B/C)");
    String? pos = stdin.readLineSync()?.toUpperCase();
    if (pos == 'A') {
      PosA['plat'] = waitinglist.isNotEmpty ? waitinglist.removeAt(0) : null;
    } else if (pos == 'B') {
      PosB['plat'] = waitinglist.isNotEmpty ? waitinglist.removeAt(0) : null;
    } else if (pos == 'C') {
      PosC['plat'] = waitinglist.isNotEmpty ? waitinglist.removeAt(0) : null;
    }
    // jika pos A dihapus
    // maka pos A jadikan null, pos A diisi  dengan list pertama, list pertama dihapus
    // jika pos B dihapus
    // maka pos B jadikan null, pos B diisi  dengan list pertama, list pertama
    // jika pos C dihapus
    // maka pos C jadikan null, pos C diisi  dengan list pertama, list pertama dihapus
  }

  void keluar() {
    exit(0);
  }

  while (jalan == true) {
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
    print("Pilih menu:");
    print("1. Tambah Waiting List");
    print("2. Lihat Waiting List");
    print("3. Lihat Pos");
    print("4. Selesaikan Pos");
    print("5. Keluar");
    print("===========================");
    stdout.write("Pilih menu (1/2/3/4/5): ");
    int? user = int.tryParse(stdin.readLineSync() ?? '');
    if (user == null || user < 1 || user > 5) {
      print("Pilihan tidak valid. Silakan pilih menu antara 1 hingga 5.");
      continue;
    }
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

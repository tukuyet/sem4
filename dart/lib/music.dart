import 'dart:io';

class Song {
  String name;
  String author;
  Song(this.name, this.author);
}

class AddressSong {
  List<Song> songs = [];
  void addSong(Song song) {
    songs.add(song);
  }

  void removeSong(String name) {
    songs.removeWhere((song) => song.name == name);
  }

  void displaySongs() {
    if (songs.isEmpty) {
      print("Bai hat trong.");
    } else {
      print("Bai hat:");
      for (var song in songs) {
        print("Ten Bai Hat: ${song.name}, Tac Gia: ${song.author}");
      }
    }
  }
}

void main() {
  var addressSong = AddressSong();
  while (true) {
    print("1. Them ten bai hat va tac gia ");
    print("2. Xoa ");
    print("3. Hien thi bai hat va tac gia");
    print("4. Thoat ");
    var readLineSync = stdin.readLineSync();
    var choice = int.parse(readLineSync!);

    switch (choice) {
      case 1:
        print("Nhap ten bai hat:");
        var name = stdin.readLineSync();
        print("Nhap ten tac gia:");
        var author = stdin.readLineSync();
        var song = Song(name!, author!);
        addressSong.addSong(song);
        print("Da them.");
        break;

      case 2:
        print("Nhap ten bai hat muon xoa:");
        var name = stdin.readLineSync();
        addressSong.removeSong(name!);
        print("Da xoa thanh cong");
        break;

      case 3:
        addressSong.displaySongs();
        break;
      case 4:
        print("Ket thuc");
        return;

      default:
        print("Lua chon khong hop le.");
    }
  }
}
void hello(String name) {
  print("Hello, $name");
}

// Positional Parameter
// Named Parameter
int menghitungLuas(int panjang, int lebar) { // Positional Parameter
  return panjang * lebar;
}

void biodata({
  required String name,
  required int age,
  String? address,
}) { // Named Parameter
  print("Name: $name");
  print("Age: $age");
  print("Address: ${address ?? "Unknown"}");
}

Future<void> fetchData() async {
  await Future.delayed(Duration(seconds: 3));
  print("Data has been fetched!");
}

void main() async {
  var age = 30;
  var _score = 75.8;
  var name = "Andi";
  var isActive = false;

  print("age: $age");
  print("_score: ${_score}");
  print("name: ${name}");
  print("isActive: ${isActive}");

  final int x = 10;
  print("x: $x");

  late final int gender;
  gender = 1;
  print("gender: $gender");

  int? y;
  print("y: $y");

  const int z = 20; // compile-time constant
  print("z: $z");

  final int a = 10;
  final int b = 20;
  final luas = a * b;
  final keliling = 2 * (a + b);
  print("luas: $luas");
  print("keliling: $keliling");

  final minimunScoreMtk = 70;
  final scoreMtk = 55;
  final isPassedMtk = scoreMtk >= minimunScoreMtk;
  
  final minimunScoreBhs = 80;
  final scoreBhs = 60;
  final isPassedBhs = scoreBhs >= minimunScoreBhs;
  final isPassedPPKN = false;

  if(isPassedMtk && isPassedBhs && isPassedPPKN) {
    print("Selamat, kamu lulus!");
  } else {
    print("Maaf, kamu tidak lulus!");
  } 

  if(scoreMtk <= 50) {
    print("Nilai MTK E");
  } else if(scoreMtk <= 60) {
    print("Nilai MTK D");
  } else if(scoreMtk <= 70) {
    print("Nilai MTK C");
  } else if(scoreMtk <= 80) {
    print("Nilai MTK B");
  } else {
    print("Nilai MTK A");
  }

  var day = "senin";
  if(day == "senin") {
    print("Jadwal MTK");
  } else if(day == "selasa") {
    print("Jadwal Bahasa Indonesia");
  } else if(day == "rabu") {
    print("Jadwal PPKN");
  } else {
    print("Tidak tahu jadwalnya");
  }

  switch (day) {
    case "senin":
      print("Jadwal MTK");
      break;
    case "selasa":
      print("Jadwal Bahasa Indonesia");
      break;
    case "rabu":
      print("Jadwal PPKN");
      break;
    default:
      print("Tidak tahu jadwalnya");
  }

  // && // AND => Keduanya harus benar
  // || // OR => Salah satu harus benar
  // ! => NOT => kebalikan dari kondisi

  for(int i = 1; i <= 30; i++) {
    final isEven = i % 2 == 0;

    if(i == 24) {
      continue;
    }

    if(isEven) {
      print("Perulangan ke-$i");
    }
  }

  var gender2 = "male";
  while(gender2 == "male") {
    print("Gender: $gender2");
    gender2 = "female";
  }

  hello("Dimas");
  final hasil = menghitungLuas(10, 20); 
  print("Hasil: $hasil");

  biodata(
    age: 40,
    name: "Julius", 
  );

  print("=======");
  fetchData();
  print("Berhasil ngambil data");

  List<String> fruits = ["Apple", "Banana", "Cherry"];
  print("fruits: ${fruits}");
  fruits.add("Durian");
  print("fruits: ${fruits}");
  fruits.add("Apple");
  print("fruits: ${fruits}");

  Set<String> setFruits = {"Apple", "Banana", "Cherry"};
  print("setFruits: ${setFruits}");
  setFruits.add("Durian");
  print("setFruits: ${setFruits}");
  setFruits.add("Apple");
  print("setFruits: ${setFruits}");

  Map<dynamic, dynamic> schedules = {
    "senin": "Matematika",
    "selasa": "Bahasa Indonesia",
    "rabu": "PPKN",
    "kamis": 4,
  };

  day = "selasa";
  print("schedules: ${schedules}");
  schedules["selasa"] = "Bahasa Inggris";
  print("schedules: ${schedules[day]}");

}
void main(List<String> args) {
  Human Mahmoud =
      Human(skinColor: "white", height: 180, weight: 80, bloodType: "a+");

  Mahmoud.read();

  print(Mahmoud.height);
}

// class
class Human {
  String? skinColor;
  double? height;
  double? weight;
  String? bloodType;
  Human(
      {required String skinColor,
      required double height,
      required double weight,
      required String bloodType}) {
    this.skinColor = skinColor;
    this.height = height;
    this.weight = weight;
    this.bloodType = bloodType;
  }
  read() {
    print("this human is reading");
  }
}

class Alien {
  String? skinColor;
  int? numberOfArms;
}

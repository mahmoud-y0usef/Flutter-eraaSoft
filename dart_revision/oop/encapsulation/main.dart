import 'private.dart';

void main(List<String> args) {
  Human human = Human(skinColor: "white", weight: 80, height: 180);

  // human.setNumberOfArms(1);
  // print(human.getNumberOfArms());
  human.numberOfArms = 1;
  print(human.getnumberOfArms);
}

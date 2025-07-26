class Human {
  int _numberOfArms = 2;
  String? skinColor;
  num? weight;
  num? height;

  Human({required String skinColor, required num weight, required num height}) {
    this.skinColor = skinColor;
    this.height = height;
    this.weight = weight;
  }

  set numberOfArms(int numberOfArms) {
    if (numberOfArms <= 2 && numberOfArms >= 0) {
      this._numberOfArms = numberOfArms;
    }
  }

  get getnumberOfArms => this._numberOfArms;

  // setNumberOfArms(int numberOfArms) {
  //   if (numberOfArms <= 2 && numberOfArms >= 0) {
  //     this._numberOfArms = numberOfArms;
  //   }
  // }

  // arrow function
  // getNumberOfArms () => this._numberOfArms;
}

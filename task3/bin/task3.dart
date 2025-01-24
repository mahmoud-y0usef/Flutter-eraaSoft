

main() {
  Mobile mobile = Mobile(name: "Samsung", color: "Black", price: "1000");
  mobile.display();
}


class Mobile {
  String ? name , color , price;

  Mobile({this.name, this.color, this.price});

  display(){
    print("Name: $name");
    print("Color: $color");
    print("Price: $price");
  }
}
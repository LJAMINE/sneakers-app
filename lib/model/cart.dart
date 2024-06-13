import 'package:flutter/material.dart';
import 'package:sneakers_shop/model/shoes.dart';

class Cart extends ChangeNotifier {
//list of shoes

  List<Shoe> shoeShop = [
    Shoe(
        name: "Zoom Freak",
        price: "238",
        imagePath: "lib/images/zoomshoe.png",
        description: " one sentences is is to fear the dear "),
    Shoe(
        name: " KD Treys",
        price: "250",
        imagePath: "lib/images/kdshoe.png",
        description: " easymoney snippers is the beast "),
    Shoe(
        name: "Air Jordan ",
        price: "230",
        imagePath: "lib/images/ex3.png",
        description: "the Goat in and of the court "),
    Shoe(
        name: "Zoom Freak",
        price: "238",
        imagePath: "lib/images/ex1.png",
        description: " kyrie one colorway black and white "),
  ];
//list of item on user cart
  List<Shoe> userCart = [];

  //get list of shoe for sale

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart

  List<Shoe> getUserCart() {
    return userCart;
  }

  //add item to cart

  void addItemtocart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart

  void removeItemfromcart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

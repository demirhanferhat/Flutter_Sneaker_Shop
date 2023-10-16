import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Zoom Freak",
      price: "236",
      imagePath: "lib/images/shoes2.png",
      description: "Good",
    ),
    Shoe(
      name: "Air Jordan",
      price: "311",
      imagePath: "lib/images/shoes3.png",
      description: "Very Good",
    ),
    Shoe(
      name: "KD Treys",
      price: "211",
      imagePath: "lib/images/shoes4.png",
      description: "Very Good",
    ),
    Shoe(
      name: "Air Jordan",
      price: "311",
      imagePath: "lib/images/shoes1.png",
      description: "Very Good",
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserList() {
    return userCart;
  }

  //add items to cart
  void addItemCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

  getUserCart() {}
}

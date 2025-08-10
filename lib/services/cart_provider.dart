//lib/services/cart_provider.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/entities/product.dart';

class CartModel {
  final Product product;
  final int quantity;

  CartModel({required this.product, required this.quantity});

  CartModel copyWith({int? quantity}) {
    return CartModel(
      product: product,
      quantity: quantity ?? this.quantity,
    );
  }
}

class CartNotifier extends Notifier<Map<String, CartModel>> {
  @override
  Map<String, CartModel> build() {
    return {};
  }

  void addProduct(Product product) {
    Map<String, CartModel> copystate() => {...state};
    final stateMap = copystate();
    if (state.containsKey(product.id)) return;
    stateMap[product.id] = CartModel(product: product, quantity: 1);
    state = stateMap;
  }

  void increaseQuantity(Product product) {
    Map<String, CartModel> copystate() => {...state};
    final stateMap = copystate();
    if (!state.containsKey(product.id)) return;
    final cartItem = stateMap[product.id]!;
    stateMap[product.id] = cartItem.copyWith(quantity: cartItem.quantity + 1);
    state = stateMap;
  }

  void decreaseQuantity(Product product) {
    Map<String, CartModel> copystate() => {...state};
    final stateMap = copystate();
    if (!state.containsKey(product.id)) return;
    final cartItem = stateMap[product.id]!;
    if (cartItem.quantity > 1) {
      stateMap[product.id] = cartItem.copyWith(quantity: cartItem.quantity - 1);
    }
    state = stateMap;
  }

  void removeProduct(Product product) {
    Map<String, CartModel> copystate() => {...state};
    final stateMap = copystate();
    if (state.containsKey(product.id)) {
      stateMap.remove(product.id);
    }
    state = stateMap;
  }

  void clearCart() {
    state = {};
  }

  double get totalPrice {
    return state.values.fold<double>(
      0.0,
      (previousValue, element) =>
          previousValue +
          (element.quantity *
              (element.product.price is num
                  ? element.product.price as num
                  : double.tryParse(element.product.price.toString()) ?? 0.0)),
    );
  }

  int get totalQuantity {
    return state.values.fold(
      0,
      (previousValue, element) => previousValue + element.quantity,
    );
  }
}

final cartProvider = NotifierProvider<CartNotifier, Map<String, CartModel>>(
  CartNotifier.new,
);
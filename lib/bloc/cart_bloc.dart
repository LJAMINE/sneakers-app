 /* import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:sneakers_shop/model/cart.dart';
  import 'package:sneakers_shop/bloc/cart_event.dart';
  import 'package:sneakers_shop/bloc/cart_state.dart';
  
  class CartBloc extends Bloc<CartEvent, CartState> {
    final Cart cart = Cart();
    CartBloc() : super(CartInitial()) {
      on<AddShoeToCart>((event, emit) {
        cart.addItemToCart(event.shoe);
        emit(CartUpdated(cart.getUserCart()));
      });

      on<RemoveShoeFromCart>((event, emit) {
        cart.removeItemFromCart(event.shoe);
        emit(CartUpdated(cart.getUserCart()));
      });

      // Emit the initial state
      emit(CartUpdated(cart.getUserCart()));
    }
  } */
 

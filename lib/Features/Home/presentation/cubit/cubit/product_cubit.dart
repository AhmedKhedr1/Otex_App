import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app/Features/Home/data/datasource/product_local_datasource.dart';
import 'package:otex_app/Features/Home/data/models/Product_model.dart';
part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  Future<void> loadProducts() async {
    emit(ProductLoading());
    try {
      final products = await ProductLocalDataSource.getProducts();
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }
}

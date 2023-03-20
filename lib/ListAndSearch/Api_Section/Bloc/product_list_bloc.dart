import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Api_Function/product_list_api.dart';
import '../Api_Function/search_api.dart';
import '../ModelClass/ListModelClass.dart';
import '../ModelClass/SearchModelClass.dart';

part 'product_list_event.dart';
part 'product_list_state.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  late SearchModelClass searchModelClass;
  ApiSearchProduct apiSearchProduct;
  late ListModelClass listModelClass;
  ProductListApi productListApi;
  ProductListBloc(this.productListApi,this.apiSearchProduct) : super(ProductListInitial()) {
    on<FetchProductList>((event, emit) async {
      try{
        emit(ProductListLoading());
        listModelClass = await productListApi.getProductListFunction();
        emit(ProductListLoaded());
      }catch(e){
        emit(ProductListError());
        print("-----------------ProductListBloc$e");


      }
      // TODO: implement event handler
    });
    on<FetchSearchEvent>((event, emit) async{
      try{
        emit(SearchLoading());
        searchModelClass = await apiSearchProduct.getSearchFunction(productName: event.productName, length: event.length);
        if(searchModelClass.statusCode == 6000){
          emit(SearchLoaded());
        }else{
          emit(SearchError(msg:"Product Not found With stock" ),);
        }
      }catch(e) {
        print("-----------------SearchBloc$e");
        emit(SearchError(msg: e.toString()));

      }

    });
  }
}




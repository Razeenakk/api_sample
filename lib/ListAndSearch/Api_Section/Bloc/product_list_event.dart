part of 'product_list_bloc.dart';

@immutable
abstract class ProductListEvent {}
class FetchProductList extends ProductListEvent{}
class FetchSearchEvent extends ProductListEvent{
  final String productName;
  final int length;

  FetchSearchEvent({required this.productName,required  this.length});
}
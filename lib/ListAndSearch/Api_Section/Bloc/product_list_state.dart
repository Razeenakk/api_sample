part of 'product_list_bloc.dart';

@immutable
abstract class ProductListState {}

class ProductListInitial extends ProductListState {}
class ProductListLoading extends ProductListState {}
class ProductListLoaded extends ProductListState {}
class ProductListError extends ProductListState {}
class SearchLoading extends ProductListState {}
class SearchLoaded extends ProductListState {}
class SearchError extends ProductListState {}

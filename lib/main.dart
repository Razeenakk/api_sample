import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ListAndSearch/Api_Section/Api_Function/product_list_api.dart';
import 'ListAndSearch/Api_Section/Api_Function/search_api.dart';
import 'ListAndSearch/Api_Section/Bloc/product_list_bloc.dart';
import 'ListAndSearch/list_and_search.dart';
Future<void> main() async {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ProductListApi productListApi = ProductListApi();
  final ApiSearchProduct apiSearchProduct = ApiSearchProduct();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

        BlocProvider<ProductListBloc>(
          create: (context) => ProductListBloc(productListApi,apiSearchProduct),
        ),


      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,),
          home:   ListAndSearchScreen()


      ),

    );
  }
}

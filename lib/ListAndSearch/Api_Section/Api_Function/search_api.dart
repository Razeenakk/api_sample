import 'dart:convert';

import 'package:http/http.dart';

import '../ModelClass/SearchModelClass.dart';
import '../Repository/api_client.dart';



class ApiSearchProduct {
 ApiClientNew apiClientNew = ApiClientNew();
 SearchModelClass searchModelClass = SearchModelClass();
  Future<SearchModelClass> getSearchFunction({required String productName, required int length }) async {
    const String searchPath = "products-search-invoice/";
    final body = {
      "BranchID": 1,
      "CompanyID" :"1901b825-fe6f-418d-b5f0-7223d0040d08",
      "CreatedUserID": 62,
      "PriceRounding": 2,
      "product_name":productName,
      "length": length,
      "type": "Sales",
      "WarehouseID": 1
    };
    Response response =
    await apiClientNew.invokeAPI(path: searchPath, method: "POST", body: body);
    return SearchModelClass.fromJson(jsonDecode(response.body));
  }
}
// SearchModelClass searchModelClass = SearchModelClass();
// Future<SearchModelClass>getSearchMovieFunction(String query )async{
//   final String searchpath = '&language=en-US&query=$query&page=1&include_adult=false';
//   Response response = await apiClient.invokeAPI(searchpath, 'SEARCH_', null);
//   return SearchModelClass.fromJson(jsonDecode(response.body));
// }
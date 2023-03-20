import 'dart:convert';

import 'package:http/http.dart';

import '../ModelClass/ListModelClass.dart';
import '../Repository/api_client.dart';

class ProductListApi {
  ApiClientNew apiClientNew = ApiClientNew();
  ListModelClass listModelClass = ListModelClass();

  String productListPath = 'products-test/';

  Future<ListModelClass> getProductListFunction() async {
    final body = {
      "CompanyID": "1901b825-fe6f-418d-b5f0-7223d0040d08",
      "BranchID": 1,
      "CreatedUserID": 62,
      "PriceRounding": 2,
      "page_no": 1,
      "items_per_page": 10,
      "type": "Sales",
      "WarehouseID": 1,
    };
    print(body);
    Response response =
    await apiClientNew.invokeAPI(path: productListPath, method: "POST", body: body);
    print("========================================**************************" +
        response.toString());
    return ListModelClass.fromJson(jsonDecode(response.body));
  }
}
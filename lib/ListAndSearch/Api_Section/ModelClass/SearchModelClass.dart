import 'dart:convert';
/// StatusCode : 6000
/// data : [{"id":"f3f53595-6012-426e-ba8e-bbd05fd4a586","ProductID":12,"ProductName":"Product with barcode 70001","PurchaseTax":"2.00000000","SalesTax":"2.00000000","GST_PurchaseTax":"0E-8","GST_SalesTax":"0E-8","Tax1_PurchaseTax":"0E-8","Tax1_SalesTax":"0E-8","Tax2_PurchaseTax":"0E-8","Tax2_SalesTax":"0E-8","Tax3_PurchaseTax":"0E-8","Tax3_SalesTax":"0E-8","DefaultUnitID":32,"is_inclusive":false,"DefaultUnitName":"Piece","DefaultSalesPrice":12.0,"DefaultPurchasePrice":20.0,"Stock":-3.0,"is_GST_inclusive":false,"is_VAT_inclusive":false,"is_TAX1_inclusive":false,"is_TAX2_inclusive":false,"is_TAX3_inclusive":false,"GST_TaxName":"None","VAT_TaxName":"2.0","GST_ID":1,"VatID":2}]

SearchModelClass searchModelClassFromJson(String str) => SearchModelClass.fromJson(json.decode(str));
String searchModelClassToJson(SearchModelClass data) => json.encode(data.toJson());
class SearchModelClass {
  SearchModelClass({
      num? statusCode, 
      List<Data>? data,}){
    _statusCode = statusCode;
    _data = data;
}

  SearchModelClass.fromJson(dynamic json) {
    _statusCode = json['StatusCode'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  num? _statusCode;
  List<Data>? _data;
SearchModelClass copyWith({  num? statusCode,
  List<Data>? data,
}) => SearchModelClass(  statusCode: statusCode ?? _statusCode,
  data: data ?? _data,
);
  num? get statusCode => _statusCode;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['StatusCode'] = _statusCode;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "f3f53595-6012-426e-ba8e-bbd05fd4a586"
/// ProductID : 12
/// ProductName : "Product with barcode 70001"
/// PurchaseTax : "2.00000000"
/// SalesTax : "2.00000000"
/// GST_PurchaseTax : "0E-8"
/// GST_SalesTax : "0E-8"
/// Tax1_PurchaseTax : "0E-8"
/// Tax1_SalesTax : "0E-8"
/// Tax2_PurchaseTax : "0E-8"
/// Tax2_SalesTax : "0E-8"
/// Tax3_PurchaseTax : "0E-8"
/// Tax3_SalesTax : "0E-8"
/// DefaultUnitID : 32
/// is_inclusive : false
/// DefaultUnitName : "Piece"
/// DefaultSalesPrice : 12.0
/// DefaultPurchasePrice : 20.0
/// Stock : -3.0
/// is_GST_inclusive : false
/// is_VAT_inclusive : false
/// is_TAX1_inclusive : false
/// is_TAX2_inclusive : false
/// is_TAX3_inclusive : false
/// GST_TaxName : "None"
/// VAT_TaxName : "2.0"
/// GST_ID : 1
/// VatID : 2

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      num? productID, 
      String? productName, 
      String? purchaseTax, 
      String? salesTax, 
      String? gSTPurchaseTax, 
      String? gSTSalesTax, 
      String? tax1PurchaseTax, 
      String? tax1SalesTax, 
      String? tax2PurchaseTax, 
      String? tax2SalesTax, 
      String? tax3PurchaseTax, 
      String? tax3SalesTax, 
      num? defaultUnitID, 
      bool? isInclusive, 
      String? defaultUnitName, 
      num? defaultSalesPrice, 
      num? defaultPurchasePrice, 
      num? stock, 
      bool? isGSTInclusive, 
      bool? isVATInclusive, 
      bool? isTAX1Inclusive, 
      bool? isTAX2Inclusive, 
      bool? isTAX3Inclusive, 
      String? gSTTaxName, 
      String? vATTaxName, 
      num? gstid, 
      num? vatID,}){
    _id = id;
    _productID = productID;
    _productName = productName;
    _purchaseTax = purchaseTax;
    _salesTax = salesTax;
    _gSTPurchaseTax = gSTPurchaseTax;
    _gSTSalesTax = gSTSalesTax;
    _tax1PurchaseTax = tax1PurchaseTax;
    _tax1SalesTax = tax1SalesTax;
    _tax2PurchaseTax = tax2PurchaseTax;
    _tax2SalesTax = tax2SalesTax;
    _tax3PurchaseTax = tax3PurchaseTax;
    _tax3SalesTax = tax3SalesTax;
    _defaultUnitID = defaultUnitID;
    _isInclusive = isInclusive;
    _defaultUnitName = defaultUnitName;
    _defaultSalesPrice = defaultSalesPrice;
    _defaultPurchasePrice = defaultPurchasePrice;
    _stock = stock;
    _isGSTInclusive = isGSTInclusive;
    _isVATInclusive = isVATInclusive;
    _isTAX1Inclusive = isTAX1Inclusive;
    _isTAX2Inclusive = isTAX2Inclusive;
    _isTAX3Inclusive = isTAX3Inclusive;
    _gSTTaxName = gSTTaxName;
    _vATTaxName = vATTaxName;
    _gstid = gstid;
    _vatID = vatID;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _productID = json['ProductID'];
    _productName = json['ProductName'];
    _purchaseTax = json['PurchaseTax'];
    _salesTax = json['SalesTax'];
    _gSTPurchaseTax = json['GST_PurchaseTax'];
    _gSTSalesTax = json['GST_SalesTax'];
    _tax1PurchaseTax = json['Tax1_PurchaseTax'];
    _tax1SalesTax = json['Tax1_SalesTax'];
    _tax2PurchaseTax = json['Tax2_PurchaseTax'];
    _tax2SalesTax = json['Tax2_SalesTax'];
    _tax3PurchaseTax = json['Tax3_PurchaseTax'];
    _tax3SalesTax = json['Tax3_SalesTax'];
    _defaultUnitID = json['DefaultUnitID'];
    _isInclusive = json['is_inclusive'];
    _defaultUnitName = json['DefaultUnitName'];
    _defaultSalesPrice = json['DefaultSalesPrice'];
    _defaultPurchasePrice = json['DefaultPurchasePrice'];
    _stock = json['Stock'];
    _isGSTInclusive = json['is_GST_inclusive'];
    _isVATInclusive = json['is_VAT_inclusive'];
    _isTAX1Inclusive = json['is_TAX1_inclusive'];
    _isTAX2Inclusive = json['is_TAX2_inclusive'];
    _isTAX3Inclusive = json['is_TAX3_inclusive'];
    _gSTTaxName = json['GST_TaxName'];
    _vATTaxName = json['VAT_TaxName'];
    _gstid = json['GST_ID'];
    _vatID = json['VatID'];
  }
  String? _id;
  num? _productID;
  String? _productName;
  String? _purchaseTax;
  String? _salesTax;
  String? _gSTPurchaseTax;
  String? _gSTSalesTax;
  String? _tax1PurchaseTax;
  String? _tax1SalesTax;
  String? _tax2PurchaseTax;
  String? _tax2SalesTax;
  String? _tax3PurchaseTax;
  String? _tax3SalesTax;
  num? _defaultUnitID;
  bool? _isInclusive;
  String? _defaultUnitName;
  num? _defaultSalesPrice;
  num? _defaultPurchasePrice;
  num? _stock;
  bool? _isGSTInclusive;
  bool? _isVATInclusive;
  bool? _isTAX1Inclusive;
  bool? _isTAX2Inclusive;
  bool? _isTAX3Inclusive;
  String? _gSTTaxName;
  String? _vATTaxName;
  num? _gstid;
  num? _vatID;
Data copyWith({  String? id,
  num? productID,
  String? productName,
  String? purchaseTax,
  String? salesTax,
  String? gSTPurchaseTax,
  String? gSTSalesTax,
  String? tax1PurchaseTax,
  String? tax1SalesTax,
  String? tax2PurchaseTax,
  String? tax2SalesTax,
  String? tax3PurchaseTax,
  String? tax3SalesTax,
  num? defaultUnitID,
  bool? isInclusive,
  String? defaultUnitName,
  num? defaultSalesPrice,
  num? defaultPurchasePrice,
  num? stock,
  bool? isGSTInclusive,
  bool? isVATInclusive,
  bool? isTAX1Inclusive,
  bool? isTAX2Inclusive,
  bool? isTAX3Inclusive,
  String? gSTTaxName,
  String? vATTaxName,
  num? gstid,
  num? vatID,
}) => Data(  id: id ?? _id,
  productID: productID ?? _productID,
  productName: productName ?? _productName,
  purchaseTax: purchaseTax ?? _purchaseTax,
  salesTax: salesTax ?? _salesTax,
  gSTPurchaseTax: gSTPurchaseTax ?? _gSTPurchaseTax,
  gSTSalesTax: gSTSalesTax ?? _gSTSalesTax,
  tax1PurchaseTax: tax1PurchaseTax ?? _tax1PurchaseTax,
  tax1SalesTax: tax1SalesTax ?? _tax1SalesTax,
  tax2PurchaseTax: tax2PurchaseTax ?? _tax2PurchaseTax,
  tax2SalesTax: tax2SalesTax ?? _tax2SalesTax,
  tax3PurchaseTax: tax3PurchaseTax ?? _tax3PurchaseTax,
  tax3SalesTax: tax3SalesTax ?? _tax3SalesTax,
  defaultUnitID: defaultUnitID ?? _defaultUnitID,
  isInclusive: isInclusive ?? _isInclusive,
  defaultUnitName: defaultUnitName ?? _defaultUnitName,
  defaultSalesPrice: defaultSalesPrice ?? _defaultSalesPrice,
  defaultPurchasePrice: defaultPurchasePrice ?? _defaultPurchasePrice,
  stock: stock ?? _stock,
  isGSTInclusive: isGSTInclusive ?? _isGSTInclusive,
  isVATInclusive: isVATInclusive ?? _isVATInclusive,
  isTAX1Inclusive: isTAX1Inclusive ?? _isTAX1Inclusive,
  isTAX2Inclusive: isTAX2Inclusive ?? _isTAX2Inclusive,
  isTAX3Inclusive: isTAX3Inclusive ?? _isTAX3Inclusive,
  gSTTaxName: gSTTaxName ?? _gSTTaxName,
  vATTaxName: vATTaxName ?? _vATTaxName,
  gstid: gstid ?? _gstid,
  vatID: vatID ?? _vatID,
);
  String? get id => _id;
  num? get productID => _productID;
  String? get productName => _productName;
  String? get purchaseTax => _purchaseTax;
  String? get salesTax => _salesTax;
  String? get gSTPurchaseTax => _gSTPurchaseTax;
  String? get gSTSalesTax => _gSTSalesTax;
  String? get tax1PurchaseTax => _tax1PurchaseTax;
  String? get tax1SalesTax => _tax1SalesTax;
  String? get tax2PurchaseTax => _tax2PurchaseTax;
  String? get tax2SalesTax => _tax2SalesTax;
  String? get tax3PurchaseTax => _tax3PurchaseTax;
  String? get tax3SalesTax => _tax3SalesTax;
  num? get defaultUnitID => _defaultUnitID;
  bool? get isInclusive => _isInclusive;
  String? get defaultUnitName => _defaultUnitName;
  num? get defaultSalesPrice => _defaultSalesPrice;
  num? get defaultPurchasePrice => _defaultPurchasePrice;
  num? get stock => _stock;
  bool? get isGSTInclusive => _isGSTInclusive;
  bool? get isVATInclusive => _isVATInclusive;
  bool? get isTAX1Inclusive => _isTAX1Inclusive;
  bool? get isTAX2Inclusive => _isTAX2Inclusive;
  bool? get isTAX3Inclusive => _isTAX3Inclusive;
  String? get gSTTaxName => _gSTTaxName;
  String? get vATTaxName => _vATTaxName;
  num? get gstid => _gstid;
  num? get vatID => _vatID;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['ProductID'] = _productID;
    map['ProductName'] = _productName;
    map['PurchaseTax'] = _purchaseTax;
    map['SalesTax'] = _salesTax;
    map['GST_PurchaseTax'] = _gSTPurchaseTax;
    map['GST_SalesTax'] = _gSTSalesTax;
    map['Tax1_PurchaseTax'] = _tax1PurchaseTax;
    map['Tax1_SalesTax'] = _tax1SalesTax;
    map['Tax2_PurchaseTax'] = _tax2PurchaseTax;
    map['Tax2_SalesTax'] = _tax2SalesTax;
    map['Tax3_PurchaseTax'] = _tax3PurchaseTax;
    map['Tax3_SalesTax'] = _tax3SalesTax;
    map['DefaultUnitID'] = _defaultUnitID;
    map['is_inclusive'] = _isInclusive;
    map['DefaultUnitName'] = _defaultUnitName;
    map['DefaultSalesPrice'] = _defaultSalesPrice;
    map['DefaultPurchasePrice'] = _defaultPurchasePrice;
    map['Stock'] = _stock;
    map['is_GST_inclusive'] = _isGSTInclusive;
    map['is_VAT_inclusive'] = _isVATInclusive;
    map['is_TAX1_inclusive'] = _isTAX1Inclusive;
    map['is_TAX2_inclusive'] = _isTAX2Inclusive;
    map['is_TAX3_inclusive'] = _isTAX3Inclusive;
    map['GST_TaxName'] = _gSTTaxName;
    map['VAT_TaxName'] = _vATTaxName;
    map['GST_ID'] = _gstid;
    map['VatID'] = _vatID;
    return map;
  }

}
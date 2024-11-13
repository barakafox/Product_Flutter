class ProductModel{
  List products;
  bool status;

  ProductModel({required this.products,required this.status});

  factory ProductModel.fromjson(Map<String,dynamic> json){
    return ProductModel(products: json['data']['products'], status: json['status']);
  }
}
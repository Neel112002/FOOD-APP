class Product{
  int? _totalSize;
  int? _typeID;
  int? _offset;

  late List<ProductModel> _products;
  List<ProductModel> get products=>_products;



  Product({required totalSize, required typeID, required offset, required products}){
    this._totalSize=totalSize;
    this._typeID=typeID;
    this._offset=offset;
    this._products=products;

  }

  Product.fromJson(Map<String, dynamic> json) {
    _totalSize= json['total_size'];
    _typeID = json['tupe_id'];
  _offset= json['offset'];

    if (json['products'] != null) {
      _products = <ProductModel>[];
      json['products'].forEach((v) {
        _products!.add( ProductModel.fromJson(v));
      }
      );
    }
  }

}

class ProductModel {
  int? id;
  String? name;
  String? description;
  int? price;
  int? stars;
  String? img;
  String? location;
  String? createdAt;
  String? upadtedAt;
  int? typeId;

  ProductModel(
    {
      this.id,
      this.name,
      this.description,
      this.price,
      this.stars,
      this.img,
      this.location,
      this.createdAt,
      this.upadtedAt,
      this.typeId
    }
  );


  ProductModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name=json['name'];
    description = json['desscrption'];
    price= json['price'];
    stars= json['stars'];
    img= json['img'];
    location= json['location'];
    createdAt= json['createdAt'];
    upadtedAt= json['upadtedAt'];
    typeId= json['typeId'];
  }
}



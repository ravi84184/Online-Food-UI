import 'package:flutter_getdrool_by_codiant/utils/icons.dart';

class RestaurantData {
  String restaurantName;
  String tag;
  String time;
  String eta;
  double rating;
  bool isLike;
  List<ImagesListBean> images;

  RestaurantData(
      {this.restaurantName, this.tag, this.time, this.eta,this.isLike, this.rating, this.images});

  RestaurantData.fromJson(Map<String, dynamic> json) {
    this.restaurantName = json['restaurant_name'];
    this.tag = json['tag'];
    this.time = json['time'];
    this.eta = json['eta'];
    this.isLike = json['isLike'];
    this.rating = json['rating'];
    this.images =
    (json['images'] as List) != null ? (json['images'] as List).map((i) =>
        ImagesListBean.fromJson(i)).toList() : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['restaurant_name'] = this.restaurantName;
    data['tag'] = this.tag;
    data['time'] = this.time;
    data['isLike'] = this.isLike;
    data['eta'] = this.eta;
    data['rating'] = this.rating;
    data['images'] =
    this.images != null ? this.images.map((i) => i.toJson()).toList() : null;
    return data;
  }

  List<RestaurantData> list = [
    RestaurantData(
        restaurantName: "Ochre Restorent",
        tag: "Thai,Vegetarian Friendly, Healthy",
        time: "10AM-10PM",
        eta: "20-30 min",
        rating: 4.5,
        isLike: true,
        images: [
          ImagesListBean(image: AppIcons.food1),
          ImagesListBean(image: AppIcons.food2),
          ImagesListBean(image: AppIcons.food3),
          ImagesListBean(image: AppIcons.food4),
          ImagesListBean(image: AppIcons.food5),
          ImagesListBean(image: AppIcons.food6),
          ImagesListBean(image: AppIcons.food7),
          ImagesListBean(image: AppIcons.food8),
        ]),
    RestaurantData(
        restaurantName: "Patang Restorent",
        tag: "Punjabi, Healthy",
        time: "11AM-11PM",
        eta: "10-15 min",
        rating: 4.0,
        isLike: false,
        images: [
          ImagesListBean(image: AppIcons.food5),
          ImagesListBean(image: AppIcons.food3),
          ImagesListBean(image: AppIcons.food7),
          ImagesListBean(image: AppIcons.food2),
          ImagesListBean(image: AppIcons.food8),
          ImagesListBean(image: AppIcons.food1),
          ImagesListBean(image: AppIcons.food4),
          ImagesListBean(image: AppIcons.food6),
        ]),
  ];

}

class ImagesListBean {
  String image;

  ImagesListBean({this.image});

  ImagesListBean.fromJson(Map<String, dynamic> json) {
    this.image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    return data;
  }
}

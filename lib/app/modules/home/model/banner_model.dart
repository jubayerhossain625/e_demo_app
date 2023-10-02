class BannerModel {
  String? image;
  String? title;
  String? subtitle;

  BannerModel({this.image, this.title, this.subtitle});

  BannerModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    subtitle = json['subtitle'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['image'] = image;
    data['title'] = title;
    data['subtitle'] = subtitle;
    return data;
  }
}

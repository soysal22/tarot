class CardModel {
  String? imageUrl;
  String? title;
  double? angle;

  CardModel({this.imageUrl, this.title, this.angle});

  CardModel.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imageUrl'] = imageUrl;
    data['title'] = title;
    return data;
  }
}

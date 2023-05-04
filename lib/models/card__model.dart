class CardModel {
  String? imageUrl;
  String? cardName;
  double? angle;
  String? title;

  CardModel({this.imageUrl, this.cardName, this.angle, this.title});

  CardModel.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    cardName = json['cardName'];

    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imageUrl'] = imageUrl;
    data['cardName'] = cardName;
    data['title'] = title;
    return data;
  }
}

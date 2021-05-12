class GamesModel {
  List<Games> games;

  GamesModel({this.games});

  GamesModel.fromJson(Map<String, dynamic> json) {
    if (json['games'] != null) {
      games = new List<Games>();
      json['games'].forEach((v) {
        games.add(new Games.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.games != null) {
      data['games'] = this.games.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Games {
  String uuid;
  String name;
  String thumbnail;
  String description;
  String type;
  List<Items> items;

  Games(
      {this.uuid,
      this.name,
      this.thumbnail,
      this.description,
      this.type,
      this.items});

  Games.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    thumbnail = json['thumbnail'];
    description = json['description'];
    type = json['type'];
    if (json['items'] != null) {
      items = new List<Items>();
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['name'] = this.name;
    data['thumbnail'] = this.thumbnail;
    data['description'] = this.description;
    data['type'] = this.type;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String uuid;
  String name;
  String description;
  String about;
  String thumbnail;

  Items({this.uuid, this.name, this.description, this.about, this.thumbnail});

  Items.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    description = json['description'];
    about = json['about'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['name'] = this.name;
    data['description'] = this.description;
    data['about'] = this.about;
    data['thumbnail'] = this.thumbnail;
    return data;
  }
}

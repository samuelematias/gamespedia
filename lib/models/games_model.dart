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
  String charactersType;
  List<CharactersList> charactersList;

  Games(
      {this.uuid,
      this.name,
      this.thumbnail,
      this.description,
      this.charactersType,
      this.charactersList});

  Games.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    thumbnail = json['thumbnail'];
    description = json['description'];
    charactersType = json['charactersType'];
    if (json['charactersList'] != null) {
      charactersList = new List<CharactersList>();
      json['charactersList'].forEach((v) {
        charactersList.add(new CharactersList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['name'] = this.name;
    data['thumbnail'] = this.thumbnail;
    data['description'] = this.description;
    data['charactersType'] = this.charactersType;
    if (this.charactersList != null) {
      data['charactersList'] =
          this.charactersList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CharactersList {
  String uuid;
  String name;
  String description;
  String about;
  String thumbnail;

  CharactersList(
      {this.uuid, this.name, this.description, this.about, this.thumbnail});

  CharactersList.fromJson(Map<String, dynamic> json) {
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

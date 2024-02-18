// ignore_for_file: public_member_api_docs, sort_constructors_first
class Character {
  Info? info;
  List<dynamic> results = [];
  Character({
    this.info,
    required this.results,
  });
  Character.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      json['results'].forEach((e) {
        results.add(Results.fromjson(e));
      });
    }
  }
  @override
  String toString() {
    return 'CharacterModel(results: $results, info: $info)';
  }
}

class Info {
  int? count;
  String? next;
  int? pages;
  Info.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    pages = json['pages'];
  }
}

class Results {
  int? id;
  String? name;
  String? status;
  String? species;
  String? gender;
  String? image;
  Results.fromjson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    gender = json['gender'];
    image = json['image'];
  }
  @override
  String toString() {
    return 'Results(id: $id, name: $name, status: $status, species: $species, gender: $gender, image: $image)';
  }
}

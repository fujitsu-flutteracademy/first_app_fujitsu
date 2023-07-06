// ignore_for_file: public_member_api_docs, sort_constructors_first
class PersonModel {
  int? id;
  String? email;
  String? first_name;
  String? avatar;
  PersonModel({
    this.id,
    this.email,
    this.first_name,
    this.avatar,
  });

  PersonModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    first_name = json['first_name'];
    avatar = json['avatar'];
  }
}

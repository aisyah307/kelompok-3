//import 'package:homepage/komenservice.dart';

class KomenModel {
  final int comment_id;
  final int portofolio_id;
  final String content;
  final String created_at;
  final String updated_at;

  KomenModel({
    required this.comment_id,
    required this.portofolio_id,
    required this.content,
    required this.created_at,
    required this.updated_at,
  });

  factory KomenModel.fromJson(Map<String, dynamic> json) {
    return KomenModel(
        comment_id: json['comment_id'],
        portofolio_id: json['portofolio_id'],
        content: json['content'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
  Map<String, dynamic> toJson() {
    return {
      'comment_id': comment_id,
      'portofolio_id': portofolio_id,
      'content': content,
      'created_at': created_at,
      'updated_at': updated_at
    };
  }
}

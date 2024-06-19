import 'package:dio/dio.dart';
import 'package:homepage/komen_model.dart';
//import 'package:homepage/comment_page.dart';

class Komenservice {
  Komenservice() {
    final Dio _dio = Dio();
    Komenservice() {
      _dio.options.baseUrl = 'localhost:3002/api';
    }

    Future<KomenModel> CommentPage(KomenModel comment) async {
      try {
        final response = await _dio.post('/medias', data: comment.toJson());
        print('comment created: ${response.data}');
        return KomenModel.fromJson(response.data);
      } catch (e) {
        print('$e');
        return KomenModel(
            comment_id: 0,
            portofolio_id: 0,
            content: '',
            created_at: '',
            updated_at: '');
      }
    }
  }
}

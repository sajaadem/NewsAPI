import 'package:http/http.dart' as http;
import 'package:NewsBloc/Model/News.dart';

class NetworkProvider {
  Future<News> fetchNews() async {
    String url = '';
    var response = await http.get(url);
    print('News Api result is : $response');
  }
}

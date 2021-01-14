import 'network_provider.dart';
import 'package:NewsBloc/Model/News.dart';

class Repository {
  final networkProvider = NetworkProvider();
  Future<News> fetchNews() {
    networkProvider.fetchNews();
    print('Storing News to the repository : ${networkProvider.fetchNews()}');
  }
}

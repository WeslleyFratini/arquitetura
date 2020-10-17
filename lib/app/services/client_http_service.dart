import 'package:arch/app/interfaces/client_http_interface.dart';

class ClientHttpService implements IClientHttp{
  @override

  final Dio dio =  Dio();

  void addToken(String token) {
    
  }

  @override  
  Future get(String url) async {
    var response awiat dio.get(url);
    return response.data;
    
  }
  
}

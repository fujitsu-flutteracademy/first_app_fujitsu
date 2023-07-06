import 'package:http/http.dart' as http;

class ServicesReqResApi {
  void getReqResService() {
    Uri myUri = Uri(
      scheme: 'https',
      host: 'reqres.in',
      path: '/api/users',
      queryParameters: {'page': '2'},
    );
    var url = Uri.parse("https://reqres.in/api/users?page=2");

    print(url);
    print(myUri);

    http.get(myUri).then((response) {
      print(response.body);
    });
  }
}

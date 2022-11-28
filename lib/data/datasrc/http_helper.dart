import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';
import '../model/member.dart';

class HttpHelper {
  final String postsURL = "https://jsonplaceholder.typicode.com/posts";
  getRequest() async {
    try {
      http.Response responce = await http.get(Uri.parse(postsURL));
      if (responce.statusCode == 200) {
        List<dynamic> responceBody = jsonDecode(responce.body);
        List<Member>? member = responceBody
            .map(
              (e) => Member.fromJson(e),
            )
            .toList();

        return member;
      } else {
        
        print("error ${responce.statusCode}");
        throw "Unable to retrieve data ";  
      }
    } catch (e) {
      print("erroc catched $e");
    }
  }

  // Future<String?> getStudent() async {
  //   http.Response responce = await http.get(Uri.parse(postsURL));

  //   if (responce.statusCode == HttpStatus.ok) {
  //     String responseBody = responce.body;
  //     return responseBody;
  //   } else {
  //     return null;
  //   }
  // }
}


import 'dart:convert';

import 'package:demo_api/models.dart';
import 'package:http/http.dart' as http;

Future<List<Products>> getNumber()async{
final response = await http.get(Uri.parse('https://api.escuelajs.co/api/v1/categories'));
if (response.statusCode==200) {
  final data=jsonDecode(response.body).cast<Map<String,dynamic>>();
  return data.map<Products>((json)=>Products.fromJson(json)).toList();
  
} else {
  throw Exception('Failed to lead');
}
}
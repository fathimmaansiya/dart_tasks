import 'dart:convert';


import 'package:flutter_application_1/movie_model.dart';
import 'package:http/http.dart' as http;

class Apicalls {
  // Future<http.Response> fetchmovie(String query) {
  //   return http.get(Uri.parse(
  //       'https://api.themoviedb.org/3/search/movie?api_key=b944d6eba2d3f434fdb9d98457345ae8&query=$query'));
  // }

  Future<List<Movie>> fetchmovie(String query) async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/search/movie?api_key=b944d6eba2d3f434fdb9d98457345ae8&query=$query'));
    if (response.statusCode == 200) {
      // log(response.headers.toString());
      final data = jsonDecode(response.body);
      // log(data);
      final List movie = data['results'];
    
      return movie.map((movie)=> Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Failed to load album');
    }
  }
}

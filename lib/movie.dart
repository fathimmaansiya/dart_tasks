import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/details.dart';
import 'package:flutter_application_1/movie_function.dart';
import 'package:flutter_application_1/movie_model.dart';

class MovieView extends StatefulWidget {
  const MovieView({super.key});

  @override
  State<MovieView> createState() => _MovieState();
}

class _MovieState extends State<MovieView> {
  late Future<List<Movie>> futureMovie;
  final searchController = TextEditingController();
  Apicalls apiCall = Apicalls();
  void searchMovie() {
    setState(() {
      futureMovie = apiCall.fetchmovie(searchController.text);
    });
  }

  @override
  void initState() {
    super.initState();
    futureMovie = apiCall.fetchmovie("b");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Movie List",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  suffixIcon: IconButton(
                      onPressed: searchMovie, icon: Icon(Icons.search))),
            ),
            Expanded(
              child: FutureBuilder<List<Movie>>(
                  future: futureMovie,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text("Error ${snapshot.error}"),
                      );
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return const Center(
                        child: Text("Nomovie found"),
                      );
                    } else {
                      final movie = snapshot.data!;
                      return ListView.builder(
                          itemCount: movie.length,
                          itemBuilder: (BuildContext context, int index) {
                            final movieToDis = movie[index];
                            return ListTile(
                                title: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),boxShadow: const[BoxShadow(color: Colors.black26,
                                      blurRadius: 5,
                                      offset: Offset(0, 2))]),
                                      child: Column(
                                        children: [
                                          Image.network(movieToDis.posterPath),
                                          Text(movieToDis.originalTitle)
                                        ],
                                      ),
                                    height: 300,
                                    width: double.infinity,
                                ),
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Details(movie: movieToDis,)));
                                },
                            );
                                
                          });
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

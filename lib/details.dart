import 'package:flutter/material.dart';
import 'package:flutter_application_1/movie_model.dart';

class Details extends StatelessWidget {
 Details({super.key, required this.movie});
  Movie? movie;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:Text ("movie Details"),),
      body: Padding(
        padding:  EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [movie!.posterPath.isNotEmpty? Image.network(movie!.posterPath,fit: BoxFit.contain,width: double.infinity,height: 400,)
            :SizedBox(
              width: 100,
              height: 100,
              child: Icon(Icons.movie),
              
            ),
            SizedBox(height: 16,
            ),Text("Title:${movie?.title}",style: TextStyle(fontSize: 18),),
               SizedBox(height: 16,
            ),Text("original language:${movie?.originalLanguage}",style: TextStyle(fontSize: 18),),
             SizedBox(height: 16,
            ),Text("released date:${movie?.releaseDate}",style: TextStyle(fontSize: 18),),
             SizedBox(height: 16,
            ),Text("overview:${movie?.overview}",style: TextStyle(fontSize: 18),),
            ],
          ),
        ),
      ),
    );
  }
}
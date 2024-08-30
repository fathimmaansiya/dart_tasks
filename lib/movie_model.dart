class Movie {
  final String backdropPath;
  final String title;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final String releaseDate;
  final String posterPath;
    

    static  String imageBaseUrl = "https://image.tmdb.org/t/p/w92";
  

  Movie({
    required this.backdropPath,
    required this.title,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.releaseDate,
    required this.posterPath,
  });
  factory Movie.fromJson(Map<String, dynamic> map) {
    return Movie(
        backdropPath: map['backdrop_path'],
        title: map['title'],
        originalLanguage: map['original_language'],
        originalTitle: map['original_title'],
        overview: map['overview'],
        releaseDate: map['release_date'],
          posterPath: "$imageBaseUrl${map['poster_path']}",
        
        );
  }
  Map<String, dynamic> toJson() {
    return {
      "backdrop_path": backdropPath,
      "title": title,
      "original_language": originalLanguage,
      "original_title": originalTitle,
      "overview": overview,
      "release_date": releaseDate,
      "poste_Path":posterPath,
    };
  }
}

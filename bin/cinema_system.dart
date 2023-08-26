import 'dart:io';
import 'category.dart';
import 'movies.dart';

void main(){
  category action =category("Action", [
    movies("The Avengers", 6),
    movies("Logan", 7)
    ]);

  category drama =category("Drama", [
    movies("The Terminal", 5),
    movies("Logan", 7)
  ]);

  category comedy =category("Comedy", [
    movies("Scooby-Do", 5),
    movies("Murder Mystery", 8)
  ]);

  category horror =category("Horror", [
    movies("Annbelle", 6),
    movies("Megan", 7)
  ]);

  List categories =[action,drama,comedy,horror];
  print("Available categories : ");
  for (var i = 0; i < categories.length; i++) {
    print("${categories[i].name}");
  }
  print("Selected Category : ");
  String selectedCategory = stdin.readLineSync()!;
  switch (selectedCategory) {
    case "Action":
      for (var i = 0; i < action.movie.length; i++) {
        print(action.movie[i].name);
      }
      break;
    case "Drama":
      for (var i = 0; i < drama.movie.length; i++) {
        print(drama.movie[i].name);
      }
    case "Horror":
      for (var i = 0; i < horror.movie.length; i++) {
        print(horror.movie[i].name);
      }
    case "Comedy":
      for (var i = 0; i < comedy.movie.length; i++) {
        print(comedy.movie[i].name);
      }
    default:
      print("Invalid selection.");
  }
  print("Select movie :");
  String selectedMoive = stdin.readLineSync()!;
  for (var i = 0; i < action.movie.length; i++) {
    if (selectedMoive == action.movie[i].name){
      print("The price for $selectedMoive is ${action.movie[i].price} OMR");
    }
  }
  for (var i = 0; i < drama.movie.length; i++) {
    if (selectedMoive == drama.movie[i].name){
      print("The price for $selectedMoive is ${drama.movie[i].price} OMR");
    }
  }
  for (var i = 0; i < comedy.movie.length; i++) {
    if (selectedMoive == comedy.movie[i].name){
      print("The price for $selectedMoive is ${comedy.movie[i].price} OMR");
    }
  }
  for (var i = 0; i < horror.movie.length; i++) {
    if (selectedMoive == horror.movie[i].name){
      print("The price for $selectedMoive is ${horror.movie[i].price} OMR");
    }
  }
}
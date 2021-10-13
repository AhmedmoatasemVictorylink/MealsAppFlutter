import 'package:flutter/material.dart';
import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        colorScheme: ColorScheme.fromSwatch(
            accentColor: Colors.amber,
            primarySwatch: Colors.purple,
            ),
          errorColor: Colors.red,
          canvasColor: Color.fromRGBO(225, 254, 225, 1),
          fontFamily: "Raleway",
          textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            subtitle1: TextStyle(
              fontSize: 24,
              fontFamily: "RobotoCondensed",
              fontWeight: FontWeight.bold,
            )
          )
      ),
      home: const CategoriesScreen(),
      routes: {
       // "/": (ctx) => CategoryMealsScreen(),    // we can also define home here
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
      },
    );
  }
}
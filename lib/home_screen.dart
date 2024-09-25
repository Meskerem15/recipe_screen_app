import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'title': 'Steak',
      'ingredients': 'Ribeye steak, Salt, Pepper, Butter, Garlic',
      'instructions': '1. Season the steak. 2. Sear in hot pan. 3. Add butter and garlic. 4. Cook to desired doneness.'
    },
    {
      'title': 'Lasagna',
      'ingredients': 'Lasagna noodles, Ground beef, Marinara sauce, Ricotta, Mozzarella',
      'instructions': '1. Cook noodles. 2. Layer noodles, beef, and cheese. 3. Bake for 45 minutes at 375°F.'
    },
    {
      'title': 'Pizza',
      'ingredients': 'Pizza dough, Tomato sauce, Mozzarella cheese, Pepperoni',
      'instructions': '1. Roll out dough. 2. Add sauce and toppings. 3. Bake for 12-15 minutes at 450°F.'
    },
    {
      'title': 'Salmon',
      'ingredients': 'Salmon fillets, Olive oil, Lemon, Garlic, Dill',
      'instructions': '1. Season salmon. 2. Sear in pan with olive oil. 3. Squeeze lemon and garnish with dill.'
    },
    {
      'title': 'Spaghetti',
      'ingredients': 'Spaghetti, Marinara sauce, Parmesan cheese, Basil',
      'instructions': '1. Cook spaghetti. 2. Heat marinara sauce. 3. Mix together and top with parmesan and basil.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['title']!),
            onTap: () {
              // Navigate to DetailsScreen with recipe details
              Navigator.pushNamed(
                context,
                DetailsScreen.routeName,
                arguments: recipes[index],
              );
            },
          );
        },
      ),
    );
  }
}

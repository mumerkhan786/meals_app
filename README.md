<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<h1>Meals App</h1>

<p>A feature-rich Meals app built using <strong>Flutter</strong> and <strong>Riverpod</strong> that helps users explore various meal options, filter meals based on preferences, mark favorite meals, and view detailed meal information. The app implements Material 3 design and uses Google Fonts for a modern and clean UI experience.</p>

<h2>Features</h2>
<ul>
    <li>Browse a variety of meals by categories (e.g., Italian, Quick & Easy, etc.)</li>
    <li>Filter meals by dietary preferences (Gluten-Free, Vegan, Vegetarian, etc.)</li>
    <li>Mark meals as favorites and view them in a separate section</li>
    <li>View detailed information for each meal, including ingredients, steps, duration, complexity, and affordability</li>
    <li>Beautiful, intuitive user interface with clickable grid items and meal cards</li>
    <li>Drawer navigation for easy access to Meals, Filters, and Favorites sections</li>
    <li>Dark theme with custom colors and Material 3 design</li>
    <li>Built with <strong>Flutter Riverpod</strong> for state management</li>
</ul>

<h2>Screens</h2>
<ul>
    <li><strong>Categories Screen</strong>: Displays meal categories in a grid format.</li>
    <li><strong>Meals Screen</strong>: Shows meals based on the selected category.</li>
    <li><strong>Meal Details Screen</strong>: Provides detailed information about a selected meal.</li>
    <li><strong>Filters Screen</strong>: Allows users to filter meals based on dietary preferences.</li>
    <li><strong>Favorites Screen</strong>: Displays meals marked as favorites.</li>
    <li><strong>Tabs Screen</strong>: A home screen with a bottom navigation bar to switch between Meals and Filters.</li>
</ul>

<h2>Folder Structure</h2>
<pre>
lib/
│
├── data/
│   └── dummy_data.dart         # Contains meal and category data
│
├── models/
│   ├── category.dart           # Category model for meal categories
│   └── meal.dart               # Meal model with meal details
│
├── providers/
│   ├── meals_provider.dart     # Provider managing meal data and filters
│   ├── filters_provider.dart   # Provider managing filters state
│   └── favorites_provider.dart # Provider managing favorite meals state
│
├── screens/
│   ├── categories.dart         # Categories screen displaying grid of meal categories
│   ├── meals.dart              # Meals screen displaying a list of meals
│   ├── meal_details.dart       # Detailed screen for each meal
│   └── filters.dart            # Filters screen for dietary preferences
│   └── favorites.dart          # Favorites screen displaying meals marked as favorite
│   └── tabs.dart               # Tabs screen for bottom navigation
│
├── widgets/
│   ├── category_grid_items.dart    # Widget for displaying meal categories in a grid
│   ├── filter_item.dart            # Widget for displaying filter switches
│   ├── main_drawer.dart            # Drawer widget for navigation
│   ├── meal_item.dart              # Widget for displaying a meal card
│   └── meal_item_trait.dart        # Widget for displaying meal traits (duration, complexity, etc.)
│
└── main.dart                    # App entry point with theme and routes setup
</pre>

<h2>Key Files</h2>

<h3><code>main.dart</code></h3>
<p>This is the entry point of the app. It sets up the app theme (Material 3 design, custom colors) and initializes the home screen as <code>TabsScreen</code>. It also integrates <strong>Flutter Riverpod</strong> for state management.</p>

<h3><code>dummy_data.dart</code></h3>
<p>Contains the hardcoded data for meal categories and individual meal details. This is where the information on each meal’s title, image, ingredients, steps, etc., is stored.</p>

<h3><code>categories.dart</code></h3>
<p>Displays a grid of clickable meal categories. When a user selects a category, it navigates to the Meals screen to show meals from that category.</p>

<h3><code>meals.dart</code></h3>
<p>Shows a list of meals for the selected category. Users can click on a meal to view its detailed information.</p>

<h3><code>meal_details.dart</code></h3>
<p>Displays detailed information for a specific meal, including ingredients, steps, and meal traits like duration, complexity, and affordability.</p>

<h3><code>filters.dart</code></h3>
<p>Allows users to toggle filters such as Gluten-Free, Vegan, Vegetarian, and Lactose-Free. These filters modify the meals displayed in the app.</p>

<h3><code>favorites.dart</code></h3>
<p>Displays all meals that the user has marked as favorite. Users can remove meals from favorites here.</p>

<h3><code>meals_provider.dart</code></h3>
<p>Manages the state of the meals and active filters, ensuring the correct meals are displayed based on user preferences.</p>

<h3><code>filters_provider.dart</code></h3>
<p>Handles the logic and state for filtering meals based on dietary preferences. It provides the current filter settings across the app.</p>

<h3><code>favorites_provider.dart</code></h3>
<p>Manages the state of favorite meals, allowing users to add and remove favorites, and ensuring the favorites list is updated across the app.</p>

<h3><code>category_grid_items.dart</code></h3>
<p>Custom widget that displays each meal category in a grid. When a category is tapped, it triggers navigation to the list of meals in that category.</p>

<h3><code>meal_item.dart</code></h3>
<p>Custom widget that shows each meal in a card format, including its image, title, duration, complexity, and affordability.</p>

<h2>How to Run</h2>
<ol>
    <li>Clone the repository:
        <pre>git clone https://github.com/yourusername/meals-app.git</pre>
    </li>
    <li>Navigate to the project directory:
        <pre>cd meals-app</pre>
    </li>
    <li>Install dependencies:
        <pre>flutter pub get</pre>
    </li>
    <li>Run the app:
        <pre>flutter run</pre>
    </li>
</ol>

<h2>Technologies Used</h2>
<ul>
    <li><strong>Flutter</strong> for the frontend</li>
    <li><strong>Flutter Riverpod</strong> for state management</li>
    <li><strong>Google Fonts</strong> for custom typography</li>
    <li><strong>Material 3 Design</strong> for modern UI/UX</li>
    <li><strong>Hero animations</strong> for smooth transitions</li>
    <li><strong>Responsive design</strong> for multiple screen sizes</li>
</ul>

<h2>License</h2>
<p>This project is licensed under the MIT License.</p>

</body>
</html>

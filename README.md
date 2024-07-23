# ecommerce_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## E-commerce Application Using Flutter

This Flutter application serves as a fully functional e-commerce platform that leverages the Fake Store API. It includes essential features such as infinite scrolling on the homepage, detailed product pages, robust search functionality, user authentication, product sorting, and a shopping cart.

## Features

Homepage:
Displays a list of featured products with images, names, prices, and ratings.
Initially loads 10 products and implements infinite scrolling to fetch more as the user scrolls down.

Product Detail Page:
Provides detailed information about a product, including images, name, price, description, ratings, and reviews when a user selects a product.

Product Search Functionality:
Allows users to search for products by name.
Displays search results with product image, name, price, and rating.

User Authentication:
Implements login and logout functionality.
Validates user registration details including name, email, phone number, and password.

Product Sort Functionality:
Enables users to sort products by price, popularity, and rating.
Implements filtering options for categories, price ranges, and ratings.

Cart Functionality:
Allows users to add and remove products from their cart.
Displays the cart with a list of added products, quantities, and total price.
Includes a checkout button that navigates the user to a checkout page.

State Management:
Utilizes Riverpod to manage the application state efficiently.

Clean Architecture:
Structures the project to separate business logic from UI code, ensuring modularity, testability, and maintainability.

Responsive UI:
Designs the UI to be responsive across various device sizes and orientations.

Documentation:
Provides meaningful variable names and comments to enhance code readability and maintainability.
Includes a README file with comprehensive setup and run instructions.


## How to set Up and Run the Application

Clone the Repository:
git clone https://github.com/kaverimeka/ecommerce-flutter-app.git
cd ecommerce-flutter-app

Install Dependencies:
flutter pub get

Run the Application:
flutter run

Test the Application:
flutter test

Dependencies:
Flutter SDK
Riverpod
HTTP package
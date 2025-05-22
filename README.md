# Flutter Clerk Authentication Demo

[![Flutter Version](https://img.shields.io/badge/Flutter-stable-blue.svg)](https://flutter.dev)
[![Dart Version](https://img.shields.io/badge/Dart-%5E3.8.0-blue.svg)](https://dart.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Build Status](https://img.shields.io/badge/build-passing-brightgreen.svg)](https://github.com/your-username/flutter-clerk-auth-demo/actions)

This project demonstrates how to integrate Clerk authentication into a Flutter application. It showcases features like user login, signup, and logout using the Clerk SDK.

## Prerequisites

Before you begin, ensure you have the following installed:

- **Flutter:** Follow the [Flutter installation guide](https://docs.flutter.dev/get-started/install) to set up Flutter on your system.
- **Clerk Account:** You'll need a Clerk account. If you don't have one, sign up at [Clerk](https://clerk.com/).

## Project Setup

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/flutter-clerk-auth-demo.git
    cd flutter-clerk-auth-demo
    ```

2.  **Install dependencies:**
    ```bash
    flutter pub get
    ```

3.  **Configure Clerk API Keys:**
    - Create a new application in your Clerk dashboard.
    - Navigate to **API Keys** in your Clerk dashboard.
    - You will need your **Publishable Key**.
    - Create a `.env` file in the root of the project (or use your preferred method for managing environment variables).
    - Add your Clerk Publishable Key to the `.env` file (or your chosen configuration):
      ```
      CLERK_PUBLISHABLE_KEY=YOUR_PUBLISHABLE_KEY
      ```
    - **Important:** Ensure this file is included in your `.gitignore` to prevent committing sensitive keys.
    - In your Flutter application, you'll need to load this key. This project might use a specific package for environment variables (e.g., `flutter_dotenv`). Check `pubspec.yaml` and the relevant Dart files (likely in `lib/`) to see how it's loaded. For example, if `flutter_dotenv` is used, you might load it in `main.dart` like this:
      ```dart
      await dotenv.load(fileName: ".env");
      String? clerkPublishableKey = dotenv.env['CLERK_PUBLISHABLE_KEY'];
      ```

4.  **Run the application:**
    ```bash
    flutter run
    ```
    Select your desired emulator or connected device.

## Project Structure

Here's a brief overview of the key files and directories:

-   **`lib/`**: Contains the core Dart code for the Flutter application.
    -   **`main.dart`**: The entry point of the application. This is where Clerk is likely initialized.
    -   **`auth_wrapper.dart`**: (If present) A widget that likely handles the authentication state, deciding whether to show the login/signup screens or the home screen.
    -   **`home_page.dart`**: (If present) A sample page displayed after successful login.
    -   **Other files/folders**: May include specific widgets, screens, or services related to authentication or other features.
-   **`android/`**, **`ios/`**, **`web/`**, **`linux/`**, **`macos/`**, **`windows/`**: Platform-specific code and configuration files.
-   **`pubspec.yaml`**: Defines project metadata, dependencies (like the Clerk SDK, `flutter_dotenv`), and assets.
-   **`README.md`**: This file, providing information about the project.

## Features Demonstrated

This project aims to showcase the following Clerk authentication features within a Flutter app:

-   **User Signup:** Allowing new users to create an account.
-   **User Login:** Enabling existing users to sign in.
-   **User Logout:** Providing a way for users to sign out.
-   **Protected Routes/Screens:** Demonstrating how to restrict access to certain parts of the app based on authentication status.
-   **Accessing User Information:** Showing how to retrieve and display authenticated user data.

## Relevant Resources

-   **Clerk Documentation:**
    -   [Clerk Home](https://clerk.com/)
    -   [Clerk Flutter SDK Documentation](https://clerk.com/docs/references/flutter)
    -   [Clerk API Keys & Configuration](https://clerk.com/docs/quickstarts/setup-clerk)
-   **Flutter Documentation:**
    -   [Flutter Official Website](https://flutter.dev/)
    -   [Flutter Widgets Catalog](https://docs.flutter.dev/ui/widgets)
    -   [State Management in Flutter](https://docs.flutter.dev/data-and-backend/state-mgmt/options)

---

*Note: This README provides a general template. You might need to adjust paths, filenames, and specific instructions based on the actual implementation details of this project.*

# Solar System App

Welcome to the Solar System App! This Flutter application provides an interactive and animated experience of our solar system, allowing users to explore planets with smooth animations and transitions.

## Features

- **Interactive Planet Rotation**: Utilizes `TweenAnimationBuilder` to animate the rotation of planets, providing a dynamic and visually appealing experience.
- **Smooth Page Transitions**: Implements the `Hero` widget for seamless and captivating transitions between different screens.
- **Educational Content**: Displays informative content about each planet, enhancing the user's learning experience.

## Screenshots

<details> 
  <summary><h2>📸Photos</h2></summary>
  <p>
    <table align="center">
  <tr>
    <td><img src="https://github.com/user-attachments/assets/bfe6a22c-df47-4cf6-8e0a-69fe76c81842" alt="Image 2" width="180" height="auto"></td>
    <td><img src="https://github.com/user-attachments/assets/67b33bae-5494-4214-982d-ee0df54ee729" alt="Image 2" width="180" height="auto"></td>
    <td><img src="https://github.com/user-attachments/assets/e8f02f3f-93fe-4ef4-8564-04f0f9290f68" alt="Image 2" width="180" height="auto"></td>
    <td><img src="https://github.com/user-attachments/assets/c76e2f9f-e11f-4781-8d99-e230a41c7276" alt="Image 2" width="180" height="auto"></td>
    <td><img src="https://github.com/user-attachments/assets/b9e0178e-fc39-41f3-8cab-627d40111bc3" alt="Image 2" width="180" height="auto"></td>
    </table>    
  </p>
  </details>
  <details> 
  <summary><h2>📽️Video</h2></summary>
  <p>
    <table align="center">
  <tr>
    <video src ="https://github.com/user-attachments/assets/13569fd9-c1fc-45b0-ac9c-1a374dc089b6"></video> </h1>
  </tr>
    </table>   
  </p>
  </details>

## Installation

To run this project locally, follow these steps:

1. **Clone the repository**:
    ```bash
    git clone https://github.com/Aayush014/solar_system_app.git
    ```

2. **Install dependencies**:
    ```bash
    flutter pub get
    ```

3. **Run the app**:
    ```bash
    flutter run
    ```

## Usage

- **Home Screen**: Displays a list of planets with animated rotations.
- **Planet Detail Screen**: Accessed by tapping on a planet, this screen provides detailed information and uses the `Hero` widget for a smooth transition.

## Code Overview

### Main Files and Directories

- **`main.dart`**: Entry point of the application.
- **`lib/screens/`**: Contains all the screen widgets.
- **`lib/widgets/`**: Contains reusable widgets, including the planet rotation widget and hero transition widget.
- **`lib/models/`**: Contains data models for the planets.

### Key Components

- **`PlanetRotationWidget`**: Uses `TweenAnimationBuilder` to animate the rotation of the planets.
- **`HeroTransitionWidget`**: Implements the `Hero` widget for smooth transitions between the home screen and planet detail screen.

## Dependencies

- **Flutter**: The framework used to build the application.
- **Provider**: For state management (if applicable).
- **TweenAnimationBuilder**: For animations.
- **Hero**: For transitions.

## Contributing

Contributions are welcome! If you have any ideas, suggestions, or issues, please feel free to create a pull request or open an issue.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements

- Thanks to the Flutter community for their support and resources.

## Contact

For any inquiries or feedback, please contact [Aayush Patel](mailto:your.email@example.com).

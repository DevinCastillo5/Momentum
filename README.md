# Momentum: Beginner Friendly Fitness App

Welcome to **Momentum**, the beginner-friendly fitness app designed to make working out fun, engaging, and consistent. Whether you're new to the gym or just looking for extra motivation, Momentum combines smart tools and a supportive community to help you build lasting habits.

## Key Features

- **AI Personal Trainer**  
  Get personalized support with intelligent workout guidance tailored to your fitness level.

- **Gamified Fitness Experience**  
  Earn XP, unlock badges, and level up as you complete workouts and stay consistent.

- **Workout of the Day**  
  Choose from a curated list of workouts to keep things fresh and effective.

- **Step-by-Step Exercise Instructions**  
  Learn how to do each movement correctly and safely with easy-to-follow guides.

- **Community Feed**  
  Post your progress, like and comment on others' posts, and stay motivated through shared experiences.

---

## Getting Started with Development

Momentum is built using Flutter and FlutterFlow, optimized for the _stable_ Flutter release.

### Run Integration Tests

#### On a real iOS / Android device:
1. Connect your device.  
2. Run from the project root:
    ```bash
    flutter test integration_test/test.dart
    ```

#### On a web browser:
1. Launch `chromedriver`:
    ```bash
    chromedriver --port=4444
    ```
2. Then run:
    ```bash
    flutter drive \
      --driver=test_driver/integration_test.dart \
      --target=integration_test/test.dart \
      -d chrome
    ```

Learn more about running Flutter integration tests [here](https://docs.flutter.dev/cookbook/testing/integration/introduction#5-run-the-integration-test).  
Check out [this guide](https://github.com/flutter/flutter/tree/main/packages/integration_test#firebase-test-lab) for testing on Firebase Test Lab.

---

We’re excited to have you join us in building a healthier, stronger community—one rep at a time! 🔥

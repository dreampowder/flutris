# FLUTRIS

![Flutter CI](https://github.com/dreampowder/flutris/actions/workflows/ci.yml/badge.svg)
[![Coverage Status](https://coveralls.io/repos/github/dreampowder/flutris/badge.svg?branch=main)](https://coveralls.io/github/dreampowder/flutris?branch=main)

One of the most common questions around TDD is how to actually implement it in frontend development — especially in complex, interactive UIs.

So I decided to create a showcase project: a test-driven take on a familiar classic — Tetris, built entirely in Flutter.

Flutris demonstrates a clean and maintainable architecture using the **BLoC Pattern**, driven entirely by **TDD (Test Driven Development)** principles. This project also features a **Continuous Delivery** pipeline to ensure code quality, test reliability, and production readiness at every commit.

---

## 🚀 Why Flutris?

This is not just another Tetris clone. **Flutris** was built to:

- Showcase **test-first development** in Flutter.
- Demonstrate **clean architecture** using the **BLoC** pattern for logic separation.
- Practice and teach **continuous delivery** in mobile development.
- Be a fully tested, production-grade app built with maintainability in mind.

---

## 🧪 Tech Stack

- **Flutter** with null safety
- **Dart** Unit & Widget Testing
- **BLoC Pattern** for state & logic separation
- **CI/CD** with GitHub Actions
- **80+% Test Coverage**
- **Modular Architecture** for testability
- **Dependency Injection** for improved testability

---

## 📦 Features

- Fully functional Tetris game
- Board & BLoC logic fully covered by tests
- Fast test feedback loop with `flutter test`
- CI checks for format, lint, test, and build
- Playable on mobile and desktop

---

## 🛠️ Development Philosophy

This project embraces:

- **Red-Green-Refactor:** All game mechanics are built test-first.
- **Small, Composable Units:** Every logic unit has a single responsibility.
- **Automation:** CI runs lint, tests, and deploys builds automatically.
- **BLoC:** Using `flutter_bloc` for a seamless separation of controller and ui logic.

## 🧪 Continuous Delivery

CI/CD is powered by GitHub Actions. Every PR triggers:

- Linting (flutter analyze)
- Unit tests (flutter test)
- Widget Tests (Golden Tests)
- Build verification
- Uploading builds into artifact repository
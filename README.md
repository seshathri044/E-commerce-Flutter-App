# 🛒 ShopEase – Premium E-Commerce App

# 🛒 ShopEase Premium – E-Commerce Flutter App

A **modern, responsive, and cross-platform** Flutter application for a complete e-commerce experience.  
Built with **Clean Architecture** and **State Management** principles for **scalability, maintainability, and performance**.  
Designed for **mobile, web, and desktop** with **fast, and user-friendly shopping**.

---

## 🏗️ Architecture

```bash
lib/
├── core/                # Constants, themes, utils, error handling
├── data/                # Data sources (APIs, local), models, repositories
│   ├── datasources/
│   ├── models/
│   └── repositories/
├── domain/              # Business logic (entities, repositories, use cases)
│   ├── repositories/
│   └── usecases/
├── presentation/        # UI screens, widgets, state management
│   └── pages/
└── main.dart            # App entry point
```

🚀 **Live Demo** → [ShopEase Web App](https://seshathri044.github.io/E-commerce-Flutter-App/)

---

✨ Features
- ✅ Beautiful onboarding & authentication screens
- ✅ Product browsing with categories & filters
- ✅ Cart & Checkout functionality
- ✅ Order tracking and history
- ✅ Wishlist management
- ✅ Responsive design for mobile, web, desktop
- ✅ Clean Architecture + Repository Pattern
- ✅ State management with Provider / Riverpod / Bloc
- ✅ Error handling & validation for smooth UX
- ✅ Ready for unit testing
- ✅ Easily extensible → coupons, analytics, multiple payment gateways

---
## 📸 Screenshots



## 🛠️ Tech Stack

- **Flutter** (Web & Mobile)
- **Riverpod** (State Management)
- **Clean Architecture**
- **Material Design 3**
- **GitHub Actions** (CI/CD)
- **GitHub Pages** (Hosting)

---
## 🧰 Prerequisites
Make sure you have installed:
- Flutter SDK
- Dart SDK
- Android Studio / VS Code with Flutter extension
- Chrome (for web) or an Android/iOS device/emulator

## ⚙️ Installation
Clone the repo
```bash
git clone https://github.com/yourusername/shopease-premium.git
cd shopease-premium
```
## Install dependencies
```bash
flutter pub get
```
## Run the App
Web (Chrome):
```bash
flutter run -d chrome
```
Mobile (Android/iOS):
```bash
flutter run
```
## 📂 Project Structure
```bash
.github/
    ├── workflows/            # CI/CD workflows
lib/
    ├── core/                 # Utilities, themes, constants, error handling
    ├── data/                 # Data layer (API, local, repositories, models)
    ├── domain/               # Use cases, entities, repository contracts
    ├── presentation/         # UI, widgets, state management
test/                         # Unit tests
```

## 🚀 CI/CD Setup (GitHub Actions)

This repo includes a **workflow** that:

- ✅ Runs `flutter test` automatically on every push/PR  
- ✅ Ensures **code quality & reliability**  

**CI/CD Status:**  
[![](https://github.com/yourusername/shopease-premium/actions/workflows/flutter-ci.yml/badge.svg)](https://github.com/yourusername/shopease-premium/actions/workflows/flutter-ci.yml)
![Status](https://img.shields.io/badge/status-passing-brightgreen?style=for-the-badge&logo=github)

![Flutter CI](https://github.com/seshathri044/E-commerce-Flutter-App/actions/workflows/flutter.yml/badge.svg)

## 🤝 Contributing
Contributions are welcome!
Feel free to fork, improve, and submit pull requests.
## 👤 Author
- seshathri m
- Passionate Java devloper | Flutter

# 🛒 E-Commerce Flutter App - ShopEase Premium   
![Flutter CI](https://github.com/seshathri044/E-commerce-Flutter-App/actions/workflows/deploy.yml/badge.svg)


A **modern, responsive, and cross-platform** Flutter application for a complete e-commerce experience.  
Built with **Clean Architecture** and **State Management** principles for **scalability, maintainability, and performance**.  
Designed for **mobile, web, and desktop** with **fast, and user-friendly shopping**.


### 🚀 **Live Demo** → [ShopEase Web App](https://seshathri044.github.io/E-commerce-Flutter-App/)

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

---

✨ Features
- ✅ onboarding & authentication screens
- ✅ Product browsing with categories & filters
- ✅ Cart & Checkout functionality
- ✅ Responsive design for mobile, web, desktop
- ✅ Clean Architecture + Repository Pattern
- ✅ State management with Provider / Riverpod / Bloc
- ✅ Error handling & validation for smooth UX
- ✅ Ready for unit testing
- ✅ Easily extensible → coupons, analytics, multiple payment gateways

---
## 📸 Screenshots
**Welcome Page**
<img width="1920" height="1080" alt="EC-2 1" src="https://github.com/user-attachments/assets/ff805485-45e1-4c15-a206-abd3f2b78765" />
**Sign in Page**
<img width="1920" height="1080" alt="EC-2 2" src="https://github.com/user-attachments/assets/806fa081-1817-4cbc-9e89-9f48eb3d5691" />
**Sign Up Page[With Detials]**
<img width="1920" height="1080" alt="EC-2 4" src="https://github.com/user-attachments/assets/6917fed2-e029-4892-aad2-bb7d51afba0f" />
**Home Page**
<img width="1920" height="1080" alt="EC-2 5" src="https://github.com/user-attachments/assets/ae48035c-1008-48af-abec-32dd7bc32a00" />
**Home Page[Select the product]**
<img width="1920" height="1080" alt="EC-2 6" src="https://github.com/user-attachments/assets/592072c9-5ba4-4879-9609-0ac63f2e0ed0" />
**Cart Page**
<img width="1920" height="1080" alt="EC-2 7" src="https://github.com/user-attachments/assets/03b3a20a-54bd-4e1c-b4bf-0c251ded3cd0" />
**Cart Page[Order Placed]**
<img width="1920" height="1080" alt="EC-2 8" src="https://github.com/user-attachments/assets/a4519211-f63c-4fda-8b7c-27d7d03d1bf5" />








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
![Flutter CI](https://github.com/seshathri044/E-commerce-Flutter-App/actions/workflows/deploy.yml/badge.svg)

## 🤝 Contributing
Contributions are welcome!
Feel free to fork, improve, and submit pull requests.

## 👤 Author
- [SESHATHRI M](https://github.com/seshathri044)
- Passionate Java Developer | Flutter

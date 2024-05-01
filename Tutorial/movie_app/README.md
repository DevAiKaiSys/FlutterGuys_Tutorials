# api

```
flutter pub add http
```

# mock test data

```
flutter pub add dev:mockito
dart pub add dev:build_runner
```

## generate

```
// _test.dart
import 'package:mockito/annotations.dart';
// Annotation which generates the cat.mocks.dart library and the MockCat class.
@GenerateNiceMocks([MockSpec<Cat>()])
```

```
flutter pub run build_runner build
# OR
dart run build_runner build
```

## run test

```
flutter test
or
flutter test test/data/repositories/movie_repository_impl_test.dart
```

# Error Handling

[dartz](https://pub.dev/packages/dartz/install)

```
flutter pub add dartz
```

# Project Structure

```
project_root/
│
├── lib/
│   │
│   ├── data/
│   │   ├── models/
│   │   │   ├── user.dart         # Model for user data
│   │   │   ├── product.dart           # Model for product data
│   │   │   └── invoice.dart           # Model for invoice data
│   │   ├── repositories/
│   │   │   ├── auth_repository.dart    # Repository for authentication
│   │   │   ├── sales_repository.dart   # Repository for sales data
│   │   │   ├── dashboard_repository.dart  # Repository for dashboard data
│   │   │   ├── product_repository.dart    # Interface for product data operations
│   │   │   ├── stocks_repository.dart   # Repository for stocks data
│   │   │   ├── tax_invoices_repository.dart   # Repository for tax invoices data
│   │   │   └── ...               # Other repository implementations
│   │   ├── datasources/
│   │   │   ├── auth_api.dart     # Authentication API
│   │   │   ├── product_api.dart       # API data source for products
│   │   │   ├── product_database.dart  # Local database data source for products
│   │   │   ├── tax_invoices_api.dart    # API for tax invoices data
│   │   │   └── ...               # Other data sources
│   │   └── ...
│   │
│   ├── domain/
│   │   ├── entities/
│   │   │   ├── user.dart         # User entity
│   │   │   ├── product.dart           # Product entity
│   │   │   └── invoice.dart           # Invoice entity
│   │   ├── repositories/
│   │   │   ├── auth_repository.dart    # Abstract repository for authentication
│   │   │   ├── tax_invoices_repository.dart   # Abstract repository for tax invoices data
│   │   │   └── ...               # Other repository interfaces
│   │   └── usecases/
│   │       ├── authenticate_user.dart    # Use case for user authentication
│   │       ├── add_product.dart       # Use case for adding a new product
│   │       ├── get_tax_invoices.dart      # Use case for fetching tax invoices
│   │       ├── create_tax_invoice.dart    # Use case for creating tax invoice
│   │       └── ...               # Other application use cases
│   │
│   ├── presentation/
│   │   ├── auth/                     # Authentication related pages and components
│   │   │   ├── login_page.dart
│   │   │   ├── register_page.dart
│   │   │   └── ...
│   │   ├── pages/
│   │   │   ├── sales_page.dart       # Sales page UI
│   │   │   ├── dashboard_page.dart   # Dashboard page UI
│   │   │   ├── stocks_page.dart      # Stocks page UI
│   │   │   ├── tax_invoices_page.dart# Tax invoices page UI
│   │   │   └── ...
│   │   ├── widgets/
│   │   │   ├── product_item.dart     # Widget for displaying a product item
│   │   │   ├── invoice_item.dart     # Widget for displaying an invoice item
│   │   │   └── ...
│   │   ├── blocs/
│   │   │   ├── product_bloc.dart     # BLoC for managing product-related state
│   │   │   ├── invoice_bloc.dart     # BLoC for managing invoice-related state
│   │   │   └── ...
│   │   │
│   │   ├── common/                   # Common UI components used across multiple sections
│   │   │   ├── drawer.dart           # Drawer navigation
│   │   │   ├── app_bar.dart          # Custom app bar
│   │   │   └── ...
│   │   ├── widgets/                  # Reusable widgets
│   │   ├── blocs/                    # BLoC classes for state management
│   │   ├── utils/
│   │   │   ├── auth_helper.dart   # Authentication helper functions
│   │   │   ├── format_helper.dart  # Formatting helper functions
│   │   │   └── ...               # Other utility functions
│   │   └── ...                       # Other UI-related classes
│   │
│   ├── app.dart                      # App entry point
│   └── ...
│
├── test/                              # Unit and widget tests
│   ├── data/
│   │   ├── repositories/
│   │   │   ├── auth_repository_test.dart   # Tests for auth repository
│   │   │   ├── sales_repository_test.dart  # Tests for sales repository
│   │   │   └── ...               # Other repository tests
│   │   │
│   │   └── ...                   # Other data-related tests
│   ├── domain/
│   │   ├── repositories/
│   │   │   ├── auth_repository_test.dart   # Tests for auth repository interface
│   │   │   ├── sales_repository_test.dart  # Tests for sales repository interface
│   │   │   └── ...               # Other repository interface tests
│   │   │
│   │   └── ...                   # Other domain-related tests
│   │
│   └── presentation/
│       ├── auth/
│       │   ├── login_page_test.dart   # Tests for login page
│       │   ├── register_page_test.dart   # Tests for register page
│       │   └── ...               # Other authentication-related tests
│       │
│       ├── sales/
│       │   ├── sales_page_test.dart   # Tests for sales page
│       │   ├── sales_chart_test.dart  # Tests for sales chart widget
│       │   └── ...               # Other sales-related tests
│       │
│       ├── dashboard/
│       │   ├── dashboard_page_test.dart   # Tests for dashboard page
│       │   ├── dashboard_widgets_test.dart  # Tests for dashboard widgets
│       │   └── ...               # Other dashboard-related tests
│       │
│       ├── stocks/
│       │   ├── stocks_page_test.dart   # Tests for stocks page
│       │   ├── stocks_list_test.dart  # Tests for stocks list widget
│       │   └── ...               # Other stocks-related tests
│       │
│       ├── tax_invoices/
│       │   ├── invoices_page_test.dart   # Tests for tax invoices page
│       │   ├── invoice_details_test.dart  # Tests for invoice details widget
│       │   └── ...               # Other tax invoices-related tests
│   └── ...
│
├── assets/                            # Static assets (images, fonts, etc.)
│
└── pubspec.yaml                       # Flutter project dependencies and configurations
```

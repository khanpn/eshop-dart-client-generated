# swagger
OpenAPI specification of eShop project.

This Dart package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.1.0-SNAPSHOT
- Build package: io.swagger.codegen.v3.generators.dart.DartClientCodegen
For more information, please visit [https://www.mekorganic.com](https://www.mekorganic.com)

## Requirements

Dart 1.20.0 or later OR Flutter 0.0.20 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: swagger
version: 1.0.0
description: Swagger API client
dependencies:
  swagger:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  swagger:
    path: /path/to/swagger
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var body = new User(); // User | A user's information

try {
    var result = api_instance.createUser(body);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->createUser: $e\n");
}
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*UserApi* | [**createUser**](docs//UserApi.md#createuser) | **POST** /users | Create a new user
*UserApi* | [**getAllUsers**](docs//UserApi.md#getallusers) | **GET** /users | Get all users
*UserApi* | [**getUserByUserId**](docs//UserApi.md#getuserbyuserid) | **GET** /users/{userId} | Get a user by user&#x27;s id
*UserApi* | [**updateUser**](docs//UserApi.md#updateuser) | **PUT** /users/{userId} | Update user&#x27;s information based on given userId

## Documentation For Models

 - [Country](docs//Country.md)
 - [Error](docs//Error.md)
 - [Pagination](docs//Pagination.md)
 - [PhoneNumber](docs//PhoneNumber.md)
 - [User](docs//User.md)

## Documentation For Authorization


## bearerScheme



## Author

developers@mekorganic.com

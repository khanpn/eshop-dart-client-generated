# swagger.api.UserApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](UserApi.md#createUser) | **POST** /users | Create a new user
[**getAllUsers**](UserApi.md#getAllUsers) | **GET** /users | Get all users
[**getUserByUserId**](UserApi.md#getUserByUserId) | **GET** /users/{userId} | Get a user by user&#x27;s id
[**updateUser**](UserApi.md#updateUser) | **PUT** /users/{userId} | Update user&#x27;s information based on given userId

# **createUser**
> User createUser(body)

Create a new user

### Example
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**User**](User.md)| A user&#x27;s information | 

### Return type

[**User**](User.md)

### Authorization

[bearerScheme](../README.md#bearerScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllUsers**
> Pagination getAllUsers(page, size, sort)

Get all users

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var page = 56; // int | The page number
var size = 56; // int | The maximum number of result
var sort = []; // List<String> | The sorting information

try {
    var result = api_instance.getAllUsers(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->getAllUsers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page number | [default to 0]
 **size** | **int**| The maximum number of result | [default to 10]
 **sort** | [**List&lt;String&gt;**](String.md)| The sorting information | [optional] 

### Return type

[**Pagination**](Pagination.md)

### Authorization

[bearerScheme](../README.md#bearerScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserByUserId**
> User getUserByUserId(userId)

Get a user by user's id

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var userId = userId_example; // String | The user's id of a user want to get

try {
    var result = api_instance.getUserByUserId(userId);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->getUserByUserId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The user&#x27;s id of a user want to get | 

### Return type

[**User**](User.md)

### Authorization

[bearerScheme](../README.md#bearerScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
> User updateUser(body, userId)

Update user's information based on given userId

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var body = new User(); // User | The user's information
var userId = userId_example; // String | Id of the user

try {
    var result = api_instance.updateUser(body, userId);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->updateUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**User**](User.md)| The user&#x27;s information | 
 **userId** | **String**| Id of the user | 

### Return type

[**User**](User.md)

### Authorization

[bearerScheme](../README.md#bearerScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


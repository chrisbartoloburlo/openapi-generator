# StoreApi

All URIs are relative to *http://petstore.swagger.io/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_order**](StoreApi.md#delete_order) | **DELETE** /store/order/{orderId} | Delete purchase order by ID
[**get_inventory**](StoreApi.md#get_inventory) | **GET** /store/inventory | Returns pet inventories by status
[**get_order_by_id**](StoreApi.md#get_order_by_id) | **GET** /store/order/{orderId} | Find purchase order by ID
[**place_order**](StoreApi.md#place_order) | **POST** /store/order | Place an order for a pet


# **delete_order**
> delete_order(order_id)

Delete purchase order by ID

For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors

### Example
```R
library(petstore)

var_order_id <- "order_id_example" # character | ID of the order that needs to be deleted

#Delete purchase order by ID
api_instance <- StoreApi$new()
result <- tryCatch(
             api_instance$delete_order(var_order_id),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  dput(result$ApiException)
  # error object
  dput(result$ApiException$error_object)
} else {
  # response headers
  dput(result$response$headers)
  # response status code
  dput(result$response$status_code)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **character**| ID of the order that needs to be deleted | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **400** | Invalid ID supplied |  -  |
| **404** | Order not found |  -  |

# **get_inventory**
> map(integer) get_inventory()

Returns pet inventories by status

Returns a map of status codes to quantities

### Example
```R
library(petstore)


#Returns pet inventories by status
api_instance <- StoreApi$new()
# Configure API key authorization: api_key
api_instance$api_client$api_keys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$get_inventory(data_file = "result.txt"),
             api_instance$get_inventory(),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  dput(result$ApiException)
  # error object
  dput(result$ApiException$error_object)
} else {
  # deserialized response object
  dput(result$content)
  # response headers
  dput(result$response$headers)
  # response status code
  dput(result$response$status_code)
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**map(integer)**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **get_order_by_id**
> Order get_order_by_id(order_id)

Find purchase order by ID

For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions

### Example
```R
library(petstore)

var_order_id <- 56 # integer | ID of pet that needs to be fetched

#Find purchase order by ID
api_instance <- StoreApi$new()
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$get_order_by_id(var_order_id, data_file = "result.txt"),
             api_instance$get_order_by_id(var_order_id),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  dput(result$ApiException)
  # error object
  dput(result$ApiException$error_object)
} else {
  # deserialized response object
  dput(result$content)
  # response headers
  dput(result$response$headers)
  # response status code
  dput(result$response$status_code)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **integer**| ID of pet that needs to be fetched | 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | Invalid ID supplied |  -  |
| **404** | Order not found |  -  |

# **place_order**
> Order place_order(order)

Place an order for a pet



### Example
```R
library(petstore)

var_order <- Order$new(123, 123, 123, "shipDate_example", "placed", "complete_example") # Order | order placed for purchasing the pet

#Place an order for a pet
api_instance <- StoreApi$new()
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$place_order(var_order, data_file = "result.txt"),
             api_instance$place_order(var_order),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  dput(result$ApiException)
  # error object
  dput(result$ApiException$error_object)
} else {
  # deserialized response object
  dput(result$content)
  # response headers
  dput(result$response$headers)
  # response status code
  dput(result$response$status_code)
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | [**Order**](Order.md)| order placed for purchasing the pet | 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/xml, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | Invalid Order |  -  |


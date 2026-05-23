# Backend API Documentation

This guide provides the API endpoints needed to connect the frontend to a real backend server for the Soft Sculpture Store.

## Overview

The frontend uses mock localStorage for data persistence during development. For production, you'll need to implement these API endpoints.

## Base URL
```
https://your-domain.com/api
```

## Authentication

### Register User
**POST** `/auth/register`

Request:
```json
{
  "firstName": "John",
  "lastName": "Doe",
  "email": "john@example.com",
  "password": "securepassword"
}
```

Response (200 OK):
```json
{
  "id": "user_123",
  "email": "john@example.com",
  "firstName": "John",
  "lastName": "Doe",
  "token": "jwt_token_here",
  "createdAt": "2024-05-23T10:00:00Z"
}
```

### Login User
**POST** `/auth/login`

Request:
```json
{
  "email": "john@example.com",
  "password": "securepassword"
}
```

Response (200 OK):
```json
{
  "id": "user_123",
  "email": "john@example.com",
  "firstName": "John",
  "lastName": "Doe",
  "token": "jwt_token_here"
}
```

---

## Products

### Get All Products
**GET** `/products?category=flowers&sort=price`

Query Parameters:
- `category` (optional): flowers, keychains, charms, decorations
- `sort` (optional): price, rating, newest
- `limit` (optional): max 100

Response (200 OK):
```json
{
  "success": true,
  "data": [
    {
      "id": 1,
      "name": "Pink Fuzzy Flower Bouquet",
      "price": 299.00,
      "category": "flowers",
      "description": "Beautiful pastel pink fuzzy wire flowers",
      "rating": 5,
      "reviewCount": 42,
      "imageUrl": "https://cdn.example.com/product-1.jpg",
      "stockQuantity": 50
    }
  ],
  "total": 8
}
```

### Get Product Details
**GET** `/products/:id`

Response (200 OK):
```json
{
  "success": true,
  "data": {
    "id": 1,
    "name": "Pink Fuzzy Flower Bouquet",
    "price": 299.00,
    "category": "flowers",
    "description": "Beautiful pastel pink fuzzy wire flowers",
    "rating": 5,
    "reviewCount": 42,
    "imageUrl": "https://cdn.example.com/product-1.jpg",
    "stockQuantity": 50,
    "reviews": [
      {
        "id": 1,
        "rating": 5,
        "text": "Amazing quality!",
        "author": "Maria S.",
        "date": "2024-05-20"
      }
    ]
  }
}
```

---

## Orders

### Create Order
**POST** `/orders`

Headers:
```
Authorization: Bearer jwt_token_here
Content-Type: application/json
```

Request:
```json
{
  "items": [
    {
      "productId": 1,
      "quantity": 2,
      "price": 299.00
    }
  ],
  "customer": {
    "firstName": "John",
    "lastName": "Doe",
    "email": "john@example.com",
    "phone": "+63 9123456789",
    "address": "123 Main Street",
    "city": "Valenzuela",
    "province": "Metro Manila",
    "postalCode": "14100"
  },
  "paymentMethod": "cod",
  "notes": "Please handle with care",
  "shippingZone": "metro_manila"
}
```

Response (201 Created):
```json
{
  "success": true,
  "data": {
    "orderNumber": "ORD-1684834800000-ABC123DEF",
    "orderId": "order_123",
    "status": "pending",
    "subtotal": 598.00,
    "shippingFee": 75.00,
    "tax": 71.76,
    "total": 744.76,
    "items": [
      {
        "productId": 1,
        "name": "Pink Fuzzy Flower Bouquet",
        "quantity": 2,
        "price": 299.00
      }
    ],
    "createdAt": "2024-05-23T10:30:00Z",
    "expectedDelivery": "2024-05-26"
  }
}
```

### Get Order Details
**GET** `/orders/:orderId`

Headers:
```
Authorization: Bearer jwt_token_here
```

Response (200 OK):
```json
{
  "success": true,
  "data": {
    "orderNumber": "ORD-1684834800000-ABC123DEF",
    "orderId": "order_123",
    "status": "pending",
    "customer": {
      "firstName": "John",
      "lastName": "Doe",
      "email": "john@example.com"
    },
    "shipping": {
      "address": "123 Main Street",
      "city": "Valenzuela",
      "province": "Metro Manila"
    },
    "items": [
      {
        "productId": 1,
        "name": "Pink Fuzzy Flower Bouquet",
        "quantity": 2,
        "price": 299.00
      }
    ],
    "subtotal": 598.00,
    "shippingFee": 75.00,
    "tax": 71.76,
    "total": 744.76,
    "paymentMethod": "cod",
    "status": "pending",
    "createdAt": "2024-05-23T10:30:00Z",
    "updatedAt": "2024-05-23T10:30:00Z"
  }
}
```

### Get User Orders
**GET** `/users/:userId/orders`

Headers:
```
Authorization: Bearer jwt_token_here
```

Query Parameters:
- `limit` (optional): default 10
- `offset` (optional): default 0
- `status` (optional): pending, confirmed, shipped, delivered, cancelled

Response (200 OK):
```json
{
  "success": true,
  "data": [
    {
      "orderNumber": "ORD-1684834800000-ABC123DEF",
      "status": "pending",
      "total": 744.76,
      "createdAt": "2024-05-23T10:30:00Z"
    }
  ],
  "total": 5,
  "limit": 10,
  "offset": 0
}
```

### Update Order Status
**PATCH** `/orders/:orderId/status`

Headers:
```
Authorization: Bearer admin_token_here
Content-Type: application/json
```

Request:
```json
{
  "status": "shipped",
  "trackingNumber": "TRK123456789"
}
```

---

## Shipping

### Get Shipping Zones
**GET** `/shipping/zones`

Response (200 OK):
```json
{
  "success": true,
  "data": [
    {
      "id": 1,
      "name": "Metro Manila",
      "region": "Metro Manila",
      "shippingFee": 50.00,
      "estimatedDays": 3
    },
    {
      "id": 2,
      "name": "Nearby Provinces",
      "region": "NCR Adjacent",
      "shippingFee": 150.00,
      "estimatedDays": 5
    }
  ]
}
```

### Calculate Shipping
**POST** `/shipping/calculate`

Request:
```json
{
  "subtotal": 598.00,
  "city": "Valenzuela",
  "province": "Metro Manila",
  "itemCount": 2
}
```

Response (200 OK):
```json
{
  "success": true,
  "data": {
    "shippingFee": 75.00,
    "tax": 71.76,
    "total": 744.76,
    "estimatedDelivery": "2024-05-26"
  }
}
```

---

## Contact

### Submit Contact Message
**POST** `/contact`

Request:
```json
{
  "name": "John Doe",
  "email": "john@example.com",
  "subject": "Product Inquiry",
  "message": "I would like to know more about custom orders."
}
```

Response (201 Created):
```json
{
  "success": true,
  "message": "Message received. We'll get back to you soon.",
  "messageId": "msg_123"
}
```

---

## Reviews

### Submit Product Review
**POST** `/products/:productId/reviews`

Headers:
```
Authorization: Bearer jwt_token_here
Content-Type: application/json
```

Request:
```json
{
  "rating": 5,
  "reviewText": "Amazing quality and beautiful design!"
}
```

Response (201 Created):
```json
{
  "success": true,
  "data": {
    "id": "review_123",
    "productId": 1,
    "rating": 5,
    "reviewText": "Amazing quality and beautiful design!",
    "author": "John D.",
    "createdAt": "2024-05-23T10:30:00Z"
  }
}
```

### Get Product Reviews
**GET** `/products/:productId/reviews?limit=10&offset=0`

Response (200 OK):
```json
{
  "success": true,
  "data": [
    {
      "id": "review_1",
      "rating": 5,
      "reviewText": "Amazing quality!",
      "author": "Maria S.",
      "createdAt": "2024-05-20"
    }
  ],
  "total": 42
}
```

---

## Error Responses

### 400 Bad Request
```json
{
  "success": false,
  "error": "Validation error",
  "details": {
    "email": "Invalid email format"
  }
}
```

### 401 Unauthorized
```json
{
  "success": false,
  "error": "Authentication required",
  "message": "Please provide a valid token"
}
```

### 404 Not Found
```json
{
  "success": false,
  "error": "Not found",
  "message": "Product not found"
}
```

### 500 Server Error
```json
{
  "success": false,
  "error": "Server error",
  "message": "An unexpected error occurred"
}
```

---

## Rate Limiting

- 100 requests per minute per IP address
- 1000 requests per hour per user

## CORS Headers Required

```
Access-Control-Allow-Origin: https://your-frontend-domain.com
Access-Control-Allow-Methods: GET, POST, PUT, PATCH, DELETE, OPTIONS
Access-Control-Allow-Headers: Content-Type, Authorization
Access-Control-Max-Age: 86400
```

## Implementation Notes

1. **Authentication**: Use JWT tokens with expiration of 24 hours
2. **Password**: Hash using bcrypt with salt rounds 10+
3. **Database**: Use prepared statements to prevent SQL injection
4. **Validation**: Validate all inputs on server-side
5. **Timestamps**: Use ISO 8601 format (UTC)
6. **Pagination**: Support limit and offset parameters
7. **Sorting**: Support multiple sort fields
8. **Filtering**: Support filtering by multiple fields

## Frontend Integration

Update the `API_URL` in `src/utils.js`:

```javascript
export const API_URL = 'https://your-api-domain.com/api';
```

Then uncomment and update the `apiCall` function to use your backend instead of mock data.

---

**Last Updated:** 2024
**API Version:** 1.0.0

# Soft Sculpture Store - Setup Guide

A beautiful, multi-page e-commerce website for handmade fuzzy wire soft sculptures with Cash on Delivery payment system.

## 🎨 Features

- **Multi-page responsive design** with Tailwind CSS
- **Pastel girly aesthetic** inspired by Powerpuff Girls
- **Shopping cart** with real-time updates
- **User authentication** (Login/Sign up)
- **Checkout with COD payment** (Cash on Delivery only)
- **Product catalog** with categories
- **Contact form** and customer support pages
- **Order management** system
- **Pure HTML/CSS/JavaScript** - no React or frameworks

## 📋 Pages Included

1. **index.html** - Home page with featured products
2. **shop.html** - Product catalog with filtering
3. **cart.html** - Shopping cart management
4. **checkout.html** - Order placement form
5. **login.html** - Customer login
6. **signup.html** - New account creation
7. **about.html** - About the business
8. **contact.html** - Contact form
9. **terms.html** - Terms & Conditions
10. **shipping.html** - Shipping information and fees

## 🗄️ Database Setup

### Requirements
- MySQL 5.7 or higher
- Database name: `soft_sculpture_db`

### Setup Instructions

1. **Create the database:**
   ```bash
   mysql -u root -p < DATABASE_SETUP.sql
   ```

2. **Or manually in MySQL Workbench:**
   - Open MySQL Workbench
   - Copy the contents of `DATABASE_SETUP.sql`
   - Execute in the SQL Editor
   - The database will be created with all tables and sample data

### Database Tables

- **users** - Customer account information
- **products** - Product catalog
- **orders** - Order records
- **order_items** - Individual items in each order
- **shipping_zones** - Shipping fee regions
- **contact_messages** - Contact form submissions
- **product_reviews** - Customer reviews

## 🚀 Getting Started

### Installation

1. **Install dependencies:**
   ```bash
   npm install
   ```

2. **Run development server:**
   ```bash
   npm run dev
   ```

3. **Build for production:**
   ```bash
   npm run build
   ```

## 📁 File Structure

```
project/
├── index.html              # Home page
├── shop.html              # Shop page
├── cart.html              # Shopping cart
├── checkout.html          # Checkout page
├── login.html             # Login page
├── signup.html            # Sign up page
├── about.html             # About page
├── contact.html           # Contact page
├── terms.html             # Terms & Conditions
├── shipping.html          # Shipping info
├── DATABASE_SETUP.sql     # MySQL database schema
├── src/
│   ├── index.css          # Tailwind CSS setup
│   ├── main.js            # Main entry point
│   ├── utils.js           # Utility functions and Cart class
│   ├── shop.js            # Shop page logic
│   ├── cart.js            # Cart page logic
│   ├── checkout.js        # Checkout logic
│   ├── login.js           # Login logic
│   ├── signup.js          # Sign up logic
│   └── contact.js         # Contact form logic
├── package.json           # Project dependencies
├── tailwind.config.js     # Tailwind configuration
└── vite.config.ts         # Vite configuration
```

## 🎯 Key Components

### Cart System
- Stored in localStorage
- Real-time cart count updates
- Persistent across page navigation

### Authentication
- Local storage-based (mock implementation)
- Demo account: `demo@example.com` / `demo123`
- User data persisted in localStorage

### Products
- 8 sample products included
- Categories: flowers, keychains, charms, decorations
- Filterable by category

### Checkout
- Forms validation
- Cash on Delivery only
- Order ID generation
- Order saved to localStorage and database

### Payment
- Cash on Delivery (COD) only
- Calculated shipping fees based on location
- 12% tax applied
- No online payment processing

## 🎨 Design Features

### Color Scheme
- Primary: Pink (#EC4899)
- Secondary: Purple (#A855F7)
- Accent: Blue (#3B82F6)
- Backgrounds: Pastel gradients

### Typography
- Headings: Bold (font-weight: 700)
- Body: Regular (font-weight: 400)
- Accent: Semibold (font-weight: 600)

### Responsive Design
- Mobile: Full width
- Tablet: 2-3 column grid
- Desktop: 4 column grid
- Fixed navigation bar

## 📦 Shipping System

### Zones and Fees
- Metro Manila: ₱50-100 (3-5 days)
- Nearby Provinces: ₱150-200 (5-7 days)
- Central Luzon: ₱200-250 (5-7 days)
- Visayas: ₱300-350 (7-10 days)
- Mindanao: ₱350-400 (7-10 days)
- Remote Areas: ₱400-500+ (10-14 days)

## 🔐 Security Notes

### For Production Implementation:
1. **Backend API** - Replace mock functions with actual API calls
2. **Password Hashing** - Use bcrypt or similar
3. **Authentication** - Implement JWT or session-based auth
4. **HTTPS** - Always use SSL/TLS
5. **Input Validation** - Sanitize all user inputs
6. **Database Security** - Use prepared statements
7. **Environment Variables** - Store sensitive data securely

## 📝 Demo Account

```
Email: demo@example.com
Password: demo123
```

## 🖼️ Assets (Images)

### Placeholder Locations in Code:
Search for the following comments to add your images:

1. **Favicon**: `/assets/favicon.png`
2. **Product Images**: `/assets/product-{id}.jpg` (e.g., `/assets/product-1.jpg`)
3. **About Page Image**: `/assets/about-story.jpg`

Replace these paths with your actual image URLs or local paths.

## 🔧 Backend Integration

### API Endpoints to Implement:

```
POST /api/auth/register      - User registration
POST /api/auth/login         - User login
POST /api/products           - Get all products
GET  /api/products/:id       - Get product details
POST /api/orders             - Create order
GET  /api/orders/:id         - Get order details
GET  /api/orders/user/:id    - Get user's orders
POST /api/contact            - Submit contact message
POST /api/reviews            - Submit product review
```

## 📊 Testing Checklist

- [ ] All pages load correctly
- [ ] Navigation works on all pages
- [ ] Cart functionality (add/remove/update quantity)
- [ ] Cart persists after page refresh
- [ ] User registration validation
- [ ] User login functionality
- [ ] Checkout form validation
- [ ] Product filtering by category
- [ ] Responsive design on mobile/tablet/desktop
- [ ] Contact form submission
- [ ] Order summary calculation
- [ ] Shipping fee calculation

## 🐛 Known Limitations (Local Implementation)

1. **No real payments** - Uses mock localStorage
2. **No email notifications** - Would need backend
3. **No order tracking** - Frontend only
4. **No inventory management** - Backend needed
5. **No image uploads** - Static image paths only

## 🚀 Production Deployment

1. Set up a Node.js backend (Express, Django, etc.)
2. Connect to MySQL database
3. Implement authentication with JWT
4. Set up email notifications
5. Configure payment gateway (optional, for future)
6. Deploy to a hosting provider
7. Set up SSL certificate
8. Configure CDN for static assets

## 📞 Support & Customization

To customize:
1. Change colors in `tailwind.config.js`
2. Modify product data in `src/utils.js`
3. Update text content directly in HTML files
4. Replace placeholder images with real product images
5. Adjust shipping fees in `DATABASE_SETUP.sql`

## 📄 License

This is a project template for educational purposes.

---

**Last Updated:** 2024
**Version:** 1.0.0

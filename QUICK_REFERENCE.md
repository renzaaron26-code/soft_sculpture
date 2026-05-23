# Quick Reference Card

## 🚀 Commands

```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build

# View production build
npm run preview
```

## 📍 URL Paths

| Page | URL |
|------|-----|
| Home | `/` or `index.html` |
| Shop | `shop.html` |
| Cart | `cart.html` |
| Checkout | `checkout.html` |
| Login | `login.html` |
| Sign Up | `signup.html` |
| About | `about.html` |
| Contact | `contact.html` |
| Terms | `terms.html` |
| Shipping | `shipping.html` |

## 🎨 Key Colors

```css
Pink: #EC4899
Purple: #A855F7
Blue: #3B82F6
Green: #22C55E
Yellow: #EAB308
Gray: #6B7280
```

## 💳 Demo Account

```
Email:    demo@example.com
Password: demo123
```

## 🛒 Sample Products

1. Pink Fuzzy Flower Bouquet - ₱299
2. Rainbow Keychain Set - ₱149
3. Cute Character Charm - ₱99
4. Pastel Flower Wall Decoration - ₱399
5. Mini Succulent Plant - ₱179
6. Phone Charm Trio - ₱249
7. Butterfly Decoration Set - ₱349
8. Heart Shaped Keychain - ₱129

## 📁 Important Files

```
src/utils.js       → Cart class & products
src/shop.js        → Shop page logic
src/cart.js        → Cart logic
src/checkout.js    → Checkout logic
index.html         → Home page
DATABASE_SETUP.sql → MySQL schema
```

## 🗄️ Database Setup

```bash
# Option 1: Command line
mysql -u root -p < DATABASE_SETUP.sql

# Option 2: MySQL Workbench
# File → Open SQL Script → DATABASE_SETUP.sql
```

## 📱 Breakpoints

- Mobile: < 768px
- Tablet: 768px - 1024px
- Desktop: > 1024px

## 🔧 Common Customizations

### Change Business Name
Search and replace "Soft Sculpture" throughout project

### Change Email
Search and replace "info@softsculpture.com"

### Change Phone
Search and replace "+63 (555) 123-4567"

### Change Address
Search and replace "Valenzuela City"

### Add Product Images
Replace `/assets/product-{id}.jpg` with your image paths

### Change Colors
Edit classes like `from-pink-400` to `from-blue-400`

## 📊 Database Tables

- `users` - Customer accounts
- `products` - Product catalog
- `orders` - Order records
- `order_items` - Order details
- `shipping_zones` - Delivery zones
- `contact_messages` - Contact submissions
- `product_reviews` - Customer reviews

## 🔐 Authentication

- Demo account: demo@example.com / demo123
- Currently uses localStorage (mock)
- For production: Implement JWT

## 💬 Contact Info

- Email: info@softsculpture.com
- Phone: +63 (555) 123-4567
- Address: Valenzuela City, Metro Manila

## 📦 Deployment

```bash
# Build
npm run build

# Vercel
vercel

# Netlify
netlify deploy --prod --dir=dist
```

## 🎯 Key Features

✅ 10 HTML pages
✅ Shopping cart
✅ User auth
✅ Checkout (COD)
✅ Product filtering
✅ Responsive design
✅ MySQL database
✅ Contact form

## 📚 Documentation

- README.md - Quick start
- SETUP_GUIDE.md - Detailed setup
- BACKEND_API.md - API docs
- DATABASE_SETUP.sql - Database
- PROJECT_SUMMARY.md - Full overview
- QUICK_REFERENCE.md - This file

## 🚨 Common Issues

| Issue | Solution |
|-------|----------|
| Cart not saving | Check localStorage enabled |
| Images missing | Verify /assets folder |
| Build fails | Run `npm install` again |
| Port 5173 busy | `npm run dev -- --port 3000` |

## 🎨 Design System

- **Font Weight**: 400 (regular), 600 (semibold), 700 (bold)
- **Line Height**: 150% (body), 120% (headings)
- **Spacing**: 8px base unit
- **Radius**: 8px-16px

## ✨ Features Overview

### Shopping
- Browse products
- Filter by category
- Add to cart
- Update quantities
- View cart total

### Checkout
- Shipping form
- Order summary
- COD payment
- Order confirmation
- Order history

### User System
- Register account
- Login
- Demo account
- Session storage
- Order tracking

### Business
- Product management
- Order management
- Customer contacts
- Shipping info
- Terms & conditions

## 🏗️ Project Structure

```
├── *.html          (10 pages)
├── src/
│   ├── *.js        (8 modules)
│   └── index.css   (Tailwind)
├── dist/           (Build output)
├── DATABASE_SETUP.sql
├── README.md
└── documentation files
```

## 💡 Tips

1. Use demo account to test full flow
2. Check browser console for errors
3. localStorage is visible in DevTools
4. Test on mobile with DevTools
5. Build and check dist/ before deployment

## 🔗 Useful Links

- [Tailwind CSS Docs](https://tailwindcss.com/docs)
- [Vite Documentation](https://vitejs.dev/)
- [MDN Web Docs](https://developer.mozilla.org/)
- [MySQL Documentation](https://dev.mysql.com/doc/)

## ⏱️ Development Timeline

- Setup: 5 minutes
- Database: 2 minutes
- Development: Already complete!
- Testing: 15 minutes
- Deployment: 5-10 minutes

## 🎓 Learning Outcomes

- Multi-page web application
- Responsive design
- JavaScript DOM manipulation
- Local storage management
- Form validation
- E-commerce flow
- Database design
- API integration

---

**Save this as a reference while developing!**

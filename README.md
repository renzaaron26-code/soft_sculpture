# 🌸 Soft Sculpture Store

A beautiful, modern e-commerce website for handmade fuzzy wire soft sculptures with a pastel Powerpuff Girls-inspired aesthetic. Built with pure HTML, CSS (Tailwind), and JavaScript - no frameworks required.

## ✨ Features

✅ **Multi-page responsive design** - Home, Shop, Cart, Checkout, About, Contact, etc.
✅ **Beautiful pastel UI** - Pink, purple, and blue gradients
✅ **Shopping cart** - Add/remove products with real-time updates
✅ **User authentication** - Sign up and login (with demo account)
✅ **Checkout system** - Cash on Delivery (COD) only
✅ **Product filtering** - Browse by category
✅ **Contact form** - Customer inquiries
✅ **Shipping information** - Regional delivery fees
✅ **Order management** - Order tracking and history
✅ **Fully responsive** - Works on mobile, tablet, desktop

## 🚀 Quick Start

### 1. Install Dependencies
```bash
npm install
```

### 2. Run Development Server
```bash
npm run dev
```

The site will be available at `http://localhost:5173`

### 3. Build for Production
```bash
npm run build
```

Output files will be in the `dist/` folder.

## 📁 Project Structure

```
├── index.html              # Home page
├── shop.html              # Product catalog
├── cart.html              # Shopping cart
├── checkout.html          # Order placement
├── login.html             # Customer login
├── signup.html            # New account
├── about.html             # About business
├── contact.html           # Contact form
├── terms.html             # Terms & Conditions
├── shipping.html          # Shipping info
│
├── src/
│   ├── index.css          # Tailwind styles
│   ├── main.js            # Entry point
│   ├── utils.js           # Utilities & Cart class
│   ├── shop.js            # Shop page logic
│   ├── cart.js            # Cart page logic
│   ├── checkout.js        # Checkout logic
│   ├── login.js           # Login logic
│   ├── signup.js          # Sign up logic
│   └── contact.js         # Contact form logic
│
├── DATABASE_SETUP.sql     # MySQL schema
├── SETUP_GUIDE.md         # Detailed setup
├── BACKEND_API.md         # API documentation
└── package.json           # Dependencies
```

## 🎨 Design Highlights

- **Pastel Color Palette**: Pink, purple, blue, mint green
- **Smooth Animations**: Hover effects and transitions
- **Clear Typography**: Easy-to-read fonts with good contrast
- **Mobile-First**: Optimized for all screen sizes
- **Modern Aesthetic**: Clean, professional, girly vibe

## 🛒 Shopping Cart

- Products stored in localStorage
- Real-time cart count updates
- Persistent across page navigation
- Add/remove/update quantity
- Automatic calculation of:
  - Subtotal
  - Shipping fees (by region)
  - Taxes (12%)
  - Final total

## 💳 Payment & Checkout

- **Cash on Delivery (COD) ONLY**
- No online payment processing
- Customer pays when order arrives
- Order confirmation with ID
- Automatic order history

## 🏥 Demo Account

```
Email:    demo@example.com
Password: demo123
```

Use this to test the full user experience.

## 📦 Product Catalog

Current products:
1. Pink Fuzzy Flower Bouquet - ₱299
2. Rainbow Keychain Set - ₱149
3. Cute Character Charm - ₱99
4. Pastel Flower Wall Decoration - ₱399
5. Mini Succulent Plant - ₱179
6. Phone Charm Trio - ₱249
7. Butterfly Decoration Set - ₱349
8. Heart Shaped Keychain - ₱129

**Categories:**
- Flowers
- Keychains
- Charms
- Decorations

## 🚚 Shipping & Delivery

| Zone | Region | Fee | Time |
|------|--------|-----|------|
| Metro Manila | NCR | ₱50-100 | 3-5 days |
| Nearby Provinces | Adjacent | ₱150-200 | 5-7 days |
| Central Luzon | CALABARZON | ₱200-250 | 5-7 days |
| Visayas | Visayas | ₱300-350 | 7-10 days |
| Mindanao | Mindanao | ₱350-400 | 7-10 days |
| Remote | Remote Areas | ₱400-500+ | 10-14 days |

## 🗄️ Database

The project includes a complete MySQL database schema (`DATABASE_SETUP.sql`) with:

- Users table (authentication)
- Products table (catalog)
- Orders table (order management)
- Order items table (order details)
- Shipping zones table (delivery)
- Contact messages table
- Product reviews table

### Setup MySQL Database

```bash
mysql -u root -p < DATABASE_SETUP.sql
```

Or import in MySQL Workbench.

## 📝 Key Features Explained

### 1. Cart System
Located in `src/utils.js`:
```javascript
const cart = new Cart();
cart.addItem(productId, quantity);
cart.removeItem(productId);
cart.updateQuantity(productId, quantity);
```

### 2. User Authentication
Located in `src/login.js` and `src/signup.js`:
- Email validation
- Password validation (min 6 chars)
- User data stored in localStorage
- Demo account included

### 3. Form Validation
All forms include:
- Required field validation
- Email format validation
- Password strength checking
- Error message display

### 4. Product Filtering
Shop page includes:
- Filter by category
- Sort functionality
- Add to cart with feedback
- Real-time search

## 🎯 Pages Overview

### Home (index.html)
- Hero section with CTA
- Featured products
- Customer reviews
- Call to action

### Shop (shop.html)
- Product grid
- Category filters
- Add to cart
- Product details

### Cart (cart.html)
- Cart items list
- Quantity controls
- Order summary
- Checkout button

### Checkout (checkout.html)
- Shipping form
- Order review
- COD payment info
- Order confirmation

### Login (login.html)
- Email/password form
- Demo account option
- Remember me option
- Sign up link

### Signup (signup.html)
- User registration form
- Password confirmation
- Terms agreement
- Auto-login after signup

### About (about.html)
- Business story
- Mission & values
- Why choose us
- Team info

### Contact (contact.html)
- Contact form
- Business info
- Hours of operation
- FAQ section

### Terms (terms.html)
- Full terms & conditions
- Refund policy
- Exchange policy
- Legal information

### Shipping (shipping.html)
- Delivery options
- How COD works
- Regional fees
- Shipping FAQ

## 🖼️ Adding Images

Search for these comments in the HTML files to add your product images:

```html
<!-- Favicon: Replace /assets/favicon.png with your favicon path -->
<!-- Product Image: Place your image here at /assets/product-{id}.jpg -->
<!-- Team Photo: Place your team photo here at /assets/about-story.jpg -->
```

Replace with:
```html
<img src="/assets/product-1.jpg" alt="Product name">
```

## 🔧 Customization

### Change Colors
Edit `tailwind.config.js` or modify Tailwind classes in HTML files.

### Update Product Data
Edit the `products` array in `src/utils.js`.

### Modify Shipping Fees
Update the zones in `DATABASE_SETUP.sql` or `src/utils.js`.

### Change Business Info
Update email, phone, address throughout HTML files (search for "info@softsculpture.com").

## 📱 Responsive Breakpoints

- **Mobile**: < 768px (single column)
- **Tablet**: 768px - 1024px (2-3 columns)
- **Desktop**: > 1024px (4 columns)

## 🔐 Security Notes

### Current Implementation
- localStorage-based (demo/development only)
- No password hashing
- Mock authentication

### For Production
- Implement proper backend API
- Use bcrypt for password hashing
- JWT token authentication
- HTTPS/SSL required
- Database security
- Input sanitization
- Rate limiting

See `BACKEND_API.md` for full API documentation.

## 📊 Browser Support

- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Mobile browsers

## 🐛 Troubleshooting

**Cart not persisting?**
- Check browser localStorage is enabled
- Clear cache and reload

**Images not showing?**
- Verify image paths in HTML
- Check /assets folder has images
- Use absolute paths for CDN images

**Build failing?**
- Run `npm install` again
- Check Node.js version (18+)
- Clear `node_modules` and reinstall

## 📚 Documentation

- **SETUP_GUIDE.md** - Detailed setup instructions
- **DATABASE_SETUP.sql** - MySQL database schema
- **BACKEND_API.md** - Complete API documentation
- **This README** - Quick reference

## 🚀 Deployment

### Vercel
```bash
npm run build
vercel
```

### Netlify
```bash
npm run build
netlify deploy --prod --dir=dist
```

### Traditional Hosting
1. Build: `npm run build`
2. Upload `dist/` folder to server
3. Configure web server for multi-page
4. Set up database on server

## 📞 Support

- **Email**: info@softsculpture.com
- **Phone**: +63 (555) 123-4567
- **Address**: Valenzuela City, Metro Manila

## 📄 License

This project is provided as-is for educational purposes.

---

**Version**: 1.0.0  
**Last Updated**: 2024  
**Built with**: HTML, CSS (Tailwind), JavaScript, Vite

**Happy crafting! 🌸✨**

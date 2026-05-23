# Essential Files Guide - What to Keep and What to Remove

## ✅ FILES TO ALWAYS KEEP (Required to Run)

### HTML Pages (10 files) - REQUIRED
```
├── index.html          ✅ Home page
├── shop.html           ✅ Product catalog
├── cart.html           ✅ Shopping cart
├── checkout.html       ✅ Checkout page
├── login.html          ✅ Login page
├── signup.html         ✅ Sign up page
├── about.html          ✅ About page
├── contact.html        ✅ Contact page
├── terms.html          ✅ Terms & Conditions
└── shipping.html       ✅ Shipping info
```

### JavaScript Files (8 files) - REQUIRED
```
src/
├── main.js             ✅ Entry point
├── utils.js            ✅ Cart class & products
├── shop.js             ✅ Shop logic
├── cart.js             ✅ Cart logic
├── checkout.js         ✅ Checkout logic
├── login.js            ✅ Login logic
├── signup.js           ✅ Sign up logic
└── contact.js          ✅ Contact form logic
```

### CSS & Styling - REQUIRED
```
src/
└── index.css           ✅ Tailwind CSS
```

### Configuration Files - REQUIRED
```
├── package.json        ✅ Dependencies
├── vite.config.ts      ✅ Build config
├── tailwind.config.js  ✅ Tailwind config
├── postcss.config.js   ✅ PostCSS config
├── tsconfig.json       ✅ TypeScript config
├── .gitignore          ✅ Git ignore rules
└── .env                ✅ Environment variables
```

### Database - REQUIRED (if using MySQL)
```
└── DATABASE_SETUP.sql  ✅ MySQL schema
```

---

## ⚠️ AUTO-GENERATED FILES (Will be created automatically)

These folders are created by commands and should NOT be in your repo:

```
├── node_modules/       ⚠️ Created by: npm install
│   └── (contains 1000s of files)
│
└── dist/               ⚠️ Created by: npm run build
    ├── *.html files (compiled)
    ├── assets/ (compiled CSS & JS)
    └── (ready for deployment)
```

**Don't include these in Git!** Add to `.gitignore`:
```
node_modules/
dist/
.env.local
*.log
```

---

## ❌ FILES TO DELETE/REMOVE

### Bolt.new Related (Platform Branding)
```
├── .bolt/              ❌ DELETE (Bolt configuration)
│   ├── config.json
│   └── prompt
│
└── bolt logo/images    ❌ DELETE (if any)
```

**How to delete .bolt folder:**
- VS Code: Right-click → Delete
- Terminal: `rm -rf .bolt`

### Unused/Old Files
```
├── src/App.tsx         ❌ DELETE (no longer used)
├── src/main.tsx        ❌ DELETE (no longer used)
├── soft-sculpture-store.zip ❌ DELETE (after extracting)
├── package-lock.json   ❌ Optional (can regenerate)
└── eslint.config.js    ❌ Optional (if not using linting)
```

---

## 📚 OPTIONAL DOCUMENTATION (Can Keep or Delete)

These files are helpful but NOT required to run the site:

```
├── README.md                    📖 Quick start guide
├── SETUP_GUIDE.md              📖 Detailed setup
├── BACKEND_API.md              📖 API documentation
├── PROJECT_SUMMARY.md          📖 Project overview
├── QUICK_REFERENCE.md          📖 Quick reference card
├── LOCAL_SETUP_GUIDE.md        📖 Local setup (this folder)
├── DEPLOYMENT_CHECKLIST.md     📖 Launch checklist
└── DELIVERY_SUMMARY.txt        📖 Delivery summary
```

**Keep if:** You want documentation and setup guides  
**Delete if:** You're short on space and understand the project

---

## 🎯 MINIMAL SETUP (For Deployment Only)

If you only need to deploy and don't need development tools:

```
Minimum files needed:
├── index.html
├── shop.html
├── cart.html
├── checkout.html
├── login.html
├── signup.html
├── about.html
├── contact.html
├── terms.html
├── shipping.html
├── src/
│   └── (all .js and .css files)
└── package.json
```

Then run:
```bash
npm install
npm run build
```

Upload the `dist/` folder to your hosting.

---

## 📋 STEP-BY-STEP: Clean Up Your Project

### Step 1: Remove Unnecessary Files
```bash
# Remove .bolt folder (if it exists)
rm -rf .bolt

# Remove unused files
rm src/App.tsx
rm src/main.tsx
rm soft-sculpture-store.zip
```

### Step 2: Remove Optional Documentation (if space is an issue)
```bash
# Keep only README.md and LOCAL_SETUP_GUIDE.md
rm SETUP_GUIDE.md
rm BACKEND_API.md
rm PROJECT_SUMMARY.md
rm QUICK_REFERENCE.md
rm DEPLOYMENT_CHECKLIST.md
rm DELIVERY_SUMMARY.txt
```

### Step 3: Update .gitignore
```bash
# Add these lines to .gitignore:
node_modules/
dist/
.env.local
.bolt/
*.log
.DS_Store
```

### Step 4: Initialize as YOUR Project
```bash
# Remove old git history
rm -rf .git

# Initialize new git
git init
git add .
git commit -m "Initial commit - Soft Sculpture Store"
```

---

## 🗂️ Final Project Structure (Clean Version)

```
soft-sculpture-store/
├── 📄 HTML Pages (10 files)
│   ├── index.html
│   ├── shop.html
│   ├── cart.html
│   ├── checkout.html
│   ├── login.html
│   ├── signup.html
│   ├── about.html
│   ├── contact.html
│   ├── terms.html
│   └── shipping.html
│
├── 📁 src/ (JavaScript & CSS)
│   ├── main.js
│   ├── utils.js
│   ├── shop.js
│   ├── cart.js
│   ├── checkout.js
│   ├── login.js
│   ├── signup.js
│   ├── contact.js
│   └── index.css
│
├── ⚙️ Configuration
│   ├── package.json
│   ├── vite.config.ts
│   ├── tailwind.config.js
│   ├── postcss.config.js
│   ├── tsconfig.json
│   ├── .gitignore
│   └── .env
│
├── 🗄️ Database
│   └── DATABASE_SETUP.sql
│
├── 📚 Documentation
│   ├── README.md
│   └── LOCAL_SETUP_GUIDE.md
│
└── 📦 Generated (after npm install & npm run build)
    ├── node_modules/ (not in git)
    └── dist/ (not in git)
```

---

## ✅ Verification Checklist

After cleanup, verify:

- [ ] `.bolt` folder is deleted
- [ ] All 10 HTML pages exist
- [ ] All 8 JavaScript files exist
- [ ] CSS file exists
- [ ] package.json exists
- [ ] DATABASE_SETUP.sql exists
- [ ] No Bolt references in files
- [ ] `.gitignore` is updated
- [ ] `npm install` works
- [ ] `npm run dev` works
- [ ] Website loads at http://localhost:5173
- [ ] No console errors

---

## 🚀 Ready to Deploy?

After cleanup, your project is production-ready:

```bash
# Install dependencies
npm install

# Build for production
npm run build

# The 'dist/' folder is ready to deploy!
```

Then upload `dist/` to:
- Vercel
- Netlify
- Any web hosting provider
- Your own server

---

## 📞 Questions?

Refer to:
- **LOCAL_SETUP_GUIDE.md** - Setup instructions
- **README.md** - Quick start
- **BACKEND_API.md** - API documentation

---

**Your project is now clean, organized, and completely yours!** ✨

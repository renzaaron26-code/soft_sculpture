# Quick Start Checklist - Get Running in 30 Minutes

## 🎯 Your 30-Minute Setup Plan

Follow these steps in order to have the site running locally in 30 minutes.

---

## ⏱️ PHASE 1: Preparation (5 minutes)

### Step 1: Download/Extract Project
- [ ] Download or extract `soft-sculpture-store.zip`
- [ ] Place folder in your working directory (Desktop, Documents, etc.)

### Step 2: Open in VS Code
- [ ] Open VS Code
- [ ] File → Open Folder
- [ ] Select `soft-sculpture-store` folder
- [ ] Click Open

### Step 3: Verify Files
- [ ] See 10 HTML files in root
- [ ] See `src/` folder with JavaScript files
- [ ] See `package.json`
- [ ] See `DATABASE_SETUP.sql`

**Time: 5 minutes** ✅

---

## ⏱️ PHASE 2: Install Dependencies (5 minutes)

### Step 1: Open Terminal in VS Code
- [ ] Press `Ctrl+`` (or View → Terminal)
- [ ] Terminal should open at bottom

### Step 2: Install Node Packages
- [ ] Type: `npm install`
- [ ] Press Enter
- [ ] **Wait 2-3 minutes** for installation
- [ ] You should see ✓ completion message
- [ ] You should see `node_modules` folder appear

**Time: 5 minutes** ✅

---

## ⏱️ PHASE 3: Set Up Database (10 minutes)

### Option A: Using VS Code MySQL Extension (Recommended)

**Install MySQL Extension:**
- [ ] Click Extensions icon (left sidebar)
- [ ] Search for "MySQL"
- [ ] Click "MySQL" by cweijan (blue icon)
- [ ] Click Install
- [ ] Wait for installation

**Connect to MySQL:**
- [ ] Click MySQL icon in left sidebar
- [ ] Click "+" to add connection
- [ ] Fill in:
  ```
  Host: localhost
  Port: 3306
  User: root
  Password: [YOUR_MYSQL_PASSWORD]
  ```
- [ ] Click Connect
- [ ] You should see "localhost" in the MySQL panel

**Create Database:**
- [ ] Right-click localhost
- [ ] Select "Create Database"
- [ ] Name: `soft_sculpture_db`
- [ ] Press Enter
- [ ] Database appears in list

**Import Schema:**
- [ ] Right-click `soft_sculpture_db`
- [ ] Select "Open Connection"
- [ ] Click Open File icon
- [ ] Select `DATABASE_SETUP.sql`
- [ ] Click Execute (lightning bolt icon)
- [ ] Wait for completion
- [ ] Expand `soft_sculpture_db` to see tables

**Time: 8-10 minutes** ✅

---

### Option B: Using Terminal (Alternative)

```bash
# If you already have MySQL running:
mysql -u root -p soft_sculpture_db < DATABASE_SETUP.sql

# Enter your MySQL password when prompted
```

---

## ⏱️ PHASE 4: Start Development Server (3 minutes)

### Step 1: Run Dev Server
- [ ] In VS Code terminal, type: `npm run dev`
- [ ] Press Enter
- [ ] You should see:
  ```
  ➜  Local:   http://localhost:5173/
  ```

### Step 2: Open in Browser
- [ ] Click on `http://localhost:5173/`
- [ ] **OR** manually type it in your browser
- [ ] You should see the Soft Sculpture home page!

### Step 3: Verify Everything Works
- [ ] Home page loads with pink/purple design ✓
- [ ] Navigation menu visible ✓
- [ ] Click "Shop" → Products display ✓
- [ ] Click product → Add to Cart button works ✓
- [ ] Cart count updates (top right) ✓
- [ ] No red errors in console ✓

**Time: 3 minutes** ✅

---

## 🎉 SUCCESS! Your Site is Running!

**Total Time: ~30 minutes**

Now you can:
- ✅ Browse the website
- ✅ Add products to cart
- ✅ Test the checkout
- ✅ Create user accounts (login/signup)
- ✅ Submit contact forms
- ✅ Everything works!

---

## 🔧 Now Own It - Remove Bolt Branding (5 minutes)

### Quick Ownership Checklist

1. **Delete .bolt folder** (if exists)
   ```bash
   rm -rf .bolt
   ```

2. **Delete unused files**
   ```bash
   rm src/App.tsx
   rm src/main.tsx
   ```

3. **Update package.json**
   - Change `"name": "vite-react-typescript-starter"` 
   - To: `"name": "soft-sculpture-store"`
   - Change version to `"1.0.0"`

4. **Initialize new git**
   ```bash
   rm -rf .git
   git init
   git add .
   git commit -m "Initial commit - Soft Sculpture Store"
   ```

---

## 📁 File Structure You Need

```
✅ REQUIRED TO RUN:
- All 10 HTML files (index.html, shop.html, etc.)
- All 8 JavaScript files (src/*.js)
- src/index.css
- package.json
- vite.config.ts
- tailwind.config.js
- DATABASE_SETUP.sql (if using database)

⚠️ AUTO-GENERATED (created by commands):
- node_modules/ (created by: npm install)
- dist/ (created by: npm run build)

❌ OPTIONAL (can delete):
- Documentation files (README.md, SETUP_GUIDE.md, etc.)
- soft-sculpture-store.zip (after extraction)
```

---

## 🚀 Production Build (When Ready)

When you're ready to deploy:

```bash
# Build for production
npm run build

# Creates optimized 'dist' folder
# Upload 'dist' folder to:
# - Vercel
# - Netlify  
# - Your web hosting
```

---

## ⚡ Common Issues & Quick Fixes

### Issue: "npm install fails"
```bash
npm cache clean --force
npm install
```

### Issue: "Port 5173 already in use"
```bash
npm run dev -- --port 3000
```

### Issue: "Can't connect to MySQL"
1. Check MySQL is running
2. Verify your password
3. Database name is `soft_sculpture_db`
4. User is `root`

### Issue: "Database tables not found"
```bash
# Re-run the SQL import
mysql -u root -p soft_sculpture_db < DATABASE_SETUP.sql
```

### Issue: "Still see .bolt in VS Code"
1. Press Ctrl+Shift+P (Cmd+Shift+P on Mac)
2. Type "Reload Window"
3. Press Enter

---

## 📚 Documentation Guide

| Document | When to Read |
|----------|--------------|
| **QUICK_START_CHECKLIST.md** | You are here! First setup |
| **LOCAL_SETUP_GUIDE.md** | Detailed step-by-step instructions |
| **FILES_TO_KEEP.md** | Which files you need/don't need |
| **REMOVE_BOLT_BRANDING.md** | How to remove Bolt references |
| **README.md** | Quick overview |
| **DATABASE_SETUP.sql** | Database schema |

---

## 🎯 Next Steps After Running

1. **Customize the website:**
   - Change product data in `src/utils.js`
   - Update business info (email, phone, address)
   - Change colors by editing Tailwind classes
   - Add your product images to `/assets/`

2. **Connect real database:**
   - Update database connection details
   - Move from localhost to production database

3. **Build backend API:**
   - See `BACKEND_API.md` for endpoints
   - Connect checkout to real order processing

4. **Deploy to live:**
   - Push code to GitHub
   - Connect to Vercel or Netlify
   - Configure custom domain
   - Go live!

---

## ✅ Final Verification Checklist

Before considering it "done":

- [ ] Site loads at http://localhost:5173
- [ ] Home page displays correctly
- [ ] Shop page shows all products
- [ ] Can add products to cart
- [ ] Cart count updates
- [ ] Checkout form works
- [ ] Login/signup pages work
- [ ] No console errors (F12)
- [ ] No Bolt branding visible
- [ ] All navigation links work

---

## 🎉 Congratulations!

You now have:
✅ A fully functional e-commerce website  
✅ Running on your local computer  
✅ With MySQL database  
✅ Ready to customize  
✅ Ready to deploy  

**The site is 100% yours!**

---

## 💡 Tips

- Keep terminal running while developing (`npm run dev`)
- VS Code auto-saves files
- Press F5 in browser to reload
- Press F12 to see console (helpful for debugging)
- All changes save automatically
- Cart data is stored in browser (localStorage)

---

## 🆘 Need Help?

1. Check the **LOCAL_SETUP_GUIDE.md** for detailed instructions
2. Check **REMOVE_BOLT_BRANDING.md** if you see Bolt references
3. Check **BACKEND_API.md** for API details
4. Check **README.md** for quick reference

---

**Ready to rock? Let's go! 🚀**

Questions? Everything is documented. Happy coding!

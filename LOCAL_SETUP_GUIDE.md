# Complete Local Setup Guide - Soft Sculpture Store

## Part 1: Connect MySQL Database in VS Code

### Step 1: Install MySQL Server

**On Windows:**
1. Download MySQL installer from https://dev.mysql.com/downloads/mysql/
2. Run the installer
3. Choose "Server only" installation
4. Follow the setup wizard
5. Configure MySQL Server as Windows Service
6. Set root password (remember this!)
7. Finish installation

**On Mac:**
1. Download DMG Archive from https://dev.mysql.com/downloads/mysql/
2. Run the installer
3. Set root password
4. Finish installation

**On Linux (Ubuntu/Debian):**
```bash
sudo apt-get update
sudo apt-get install mysql-server
sudo mysql_secure_installation
```

---

### Step 2: Install MySQL Extension in VS Code

1. Open VS Code
2. Go to Extensions (Ctrl+Shift+X or Cmd+Shift+X)
3. Search for "MySQL"
4. Install **"MySQL" by cweijan** (most popular, blue icon)
5. Reload VS Code

---

### Step 3: Connect to MySQL in VS Code

1. Click the **MySQL icon** in the left sidebar (looks like a database)
2. Click **"+"** to add a new connection
3. Fill in the connection details:
   ```
   Host: localhost
   Port: 3306
   User: root
   Password: [YOUR_PASSWORD_FROM_SETUP]
   Database: (leave empty for now)
   ```
4. Click **"Connect"**
5. You should see "localhost" appear in the MySQL panel

---

### Step 4: Create the Database

1. Right-click on **"localhost"** in MySQL panel
2. Select **"Create Database"**
3. Name it: `soft_sculpture_db`
4. Press Enter
5. You should see the database appear in the list

---

### Step 5: Import the Database Schema

**Method 1: Using VS Code (Recommended)**

1. Right-click on `soft_sculpture_db`
2. Select **"Open Connection"**
3. Click the **"Open File"** icon (document icon)
4. Select `DATABASE_SETUP.sql` from your project folder
5. Click the **"Execute"** button (lightning bolt icon)
6. Wait for completion - you should see "Query executed successfully"

**Method 2: Using Terminal**

```bash
# Open terminal in your project folder
cd path/to/soft-sculpture-store

# Connect to MySQL and import the SQL file
mysql -u root -p soft_sculpture_db < DATABASE_SETUP.sql

# Enter your MySQL password when prompted
```

---

### Step 6: Verify Database Tables

1. Expand `soft_sculpture_db` in MySQL panel
2. You should see these tables:
   - `users`
   - `products`
   - `orders`
   - `order_items`
   - `shipping_zones`
   - `contact_messages`
   - `product_reviews`

3. Click on any table to see the data
4. If you see sample products, the database is set up correctly!

---

## Part 2: Set Up the Project in VS Code

### Step 1: Open the Project Folder

1. Open VS Code
2. File → Open Folder
3. Select your `soft-sculpture-store` project folder
4. Click "Open"

---

### Step 2: Install Node.js Dependencies

1. Open Terminal in VS Code (Ctrl+` or View → Terminal)
2. Make sure you're in the project folder
3. Run:
   ```bash
   npm install
   ```
4. Wait for all dependencies to install (might take 2-3 minutes)
5. You should see a `node_modules` folder appear

---

### Step 3: Create Environment File

1. In the project root, create a file named `.env.local`
2. Add these environment variables:
   ```
   VITE_SUPABASE_URL=http://localhost:3000
   VITE_SUPABASE_ANON_KEY=local-development-key
   VITE_API_URL=http://localhost:3001
   ```

3. Save the file

---

### Step 4: Start the Development Server

1. In terminal, run:
   ```bash
   npm run dev
   ```

2. You should see output like:
   ```
   VITE v5.4.8 building for production...
   
   ➜  Local:   http://localhost:5173/
   ➜  press h to show help
   ```

3. Open your browser and visit: **http://localhost:5173**

4. You should see the home page with the pink/purple design!

---

## Part 3: Essential Files Only (Minimal Setup)

If you only want to run the project without extra files, here's what you NEED:

### Minimum Required Files Structure:

```
soft-sculpture-store/
├── index.html              ✅ REQUIRED
├── shop.html               ✅ REQUIRED
├── cart.html               ✅ REQUIRED
├── checkout.html           ✅ REQUIRED
├── login.html              ✅ REQUIRED
├── signup.html             ✅ REQUIRED
├── about.html              ✅ REQUIRED
├── contact.html            ✅ REQUIRED
├── terms.html              ✅ REQUIRED
├── shipping.html           ✅ REQUIRED
│
├── src/
│   ├── index.css           ✅ REQUIRED
│   ├── main.js             ✅ REQUIRED
│   ├── utils.js            ✅ REQUIRED
│   ├── shop.js             ✅ REQUIRED
│   ├── cart.js             ✅ REQUIRED
│   ├── checkout.js         ✅ REQUIRED
│   ├── login.js            ✅ REQUIRED
│   ├── signup.js           ✅ REQUIRED
│   └── contact.js          ✅ REQUIRED
│
├── package.json            ✅ REQUIRED
├── vite.config.ts          ✅ REQUIRED
├── tailwind.config.js      ✅ REQUIRED
├── postcss.config.js       ✅ REQUIRED
│
├── DATABASE_SETUP.sql      ✅ REQUIRED (if using database)
└── tsconfig.json           ✅ REQUIRED
```

### Optional Files (can delete):

```
├── node_modules/           ❌ AUTO-GENERATED (recreate with npm install)
├── dist/                   ❌ AUTO-GENERATED (recreate with npm run build)
├── .bolt/                  ❌ REMOVE (Bolt.new branding)
├── soft-sculpture-store.zip ❌ REMOVE (if not needed)
├── .git/                   ❌ REMOVE (if starting fresh)
│
├── Documentation (can delete if space is limited):
├── README.md               ❌ OPTIONAL
├── SETUP_GUIDE.md          ❌ OPTIONAL
├── BACKEND_API.md          ❌ OPTIONAL
├── PROJECT_SUMMARY.md      ❌ OPTIONAL
├── QUICK_REFERENCE.md      ❌ OPTIONAL
├── DEPLOYMENT_CHECKLIST.md ❌ OPTIONAL
├── DELIVERY_SUMMARY.txt    ❌ OPTIONAL
└── LOCAL_SETUP_GUIDE.md    ❌ OPTIONAL
```

---

## Part 4: What is .bolt Folder and How to Remove It

### What is .bolt?

The `.bolt` folder is created by Bolt.new (the AI platform) to:
- Store configuration for the project
- Track the project state
- Maintain settings specific to Bolt.new

It contains files like:
- `config.json` - Bolt configuration
- `prompt` - Project description

### Why Remove It?

When you remove `.bolt`, you:
✅ Delete all references to Bolt.new  
✅ Make it YOUR project (not "made by Bolt")  
✅ Reduce file size slightly  
✅ Remove platform-specific metadata  

### How to Remove .bolt Folder

**Method 1: Using VS Code (Easiest)**

1. Open the project in VS Code
2. Look in the file explorer on the left
3. Right-click on the `.bolt` folder
4. Select **"Delete"**
5. Confirm deletion
6. The folder is gone!

**Method 2: Using Terminal**

On Mac/Linux:
```bash
rm -rf .bolt
```

On Windows (Command Prompt):
```bash
rmdir /s .bolt
```

On Windows (PowerShell):
```bash
Remove-Item -Recurse -Force .bolt
```

---

## Part 5: Remove ALL Bolt.new Branding

Follow these steps to completely own the project:

### Step 1: Delete .bolt Folder
(See Part 4 above)

### Step 2: Remove from .gitignore (if exists)

1. Open `.gitignore` file
2. Remove or comment out this line:
   ```
   .bolt/
   ```

### Step 3: Update package.json

Open `package.json` and make sure it shows YOUR project:

```json
{
  "name": "soft-sculpture-store",
  "description": "E-commerce website for handmade fuzzy wire soft sculptures",
  "author": "Your Name",
  "license": "MIT",
  "private": true,
  "version": "1.0.0"
}
```

### Step 4: Remove Meta Tags from HTML

In each HTML file (index.html, shop.html, etc.), find and REMOVE these lines:

**REMOVE:**
```html
<meta property="og:image" content="https://bolt.new/static/og_default.png" />
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:image" content="https://bolt.new/static/og_default.png" />
<link rel="icon" type="image/svg+xml" href="/vite.svg" />
```

**KEEP:**
```html
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Soft Sculpture - Handmade Fuzzy Wire Crafts</title>
<link rel="icon" type="image/png" href="/assets/favicon.png">
<link rel="stylesheet" href="/src/index.css">
```

### Step 5: Clean up vite.config.ts

Your `vite.config.ts` already has the correct setup. No changes needed.

### Step 6: Initialize Git as YOUR Project

```bash
# Remove old git history (if any)
rm -rf .git

# Initialize as new project
git init
git add .
git commit -m "Initial commit - Soft Sculpture Store"
```

---

## Complete Checklist to Own Your Project

- [ ] Delete `.bolt` folder
- [ ] Update `package.json` with your details
- [ ] Remove Bolt meta tags from all HTML files
- [ ] Remove Bolt favicon references
- [ ] Initialize new git repository
- [ ] Add your own README.md
- [ ] Update contact info (email, phone, address) throughout the site
- [ ] Add your own favicon at `/assets/favicon.png`
- [ ] Update product images at `/assets/product-*.jpg`
- [ ] Update business name throughout if needed
- [ ] Test the site locally (`npm run dev`)
- [ ] Build for production (`npm run build`)

---

## Quick Command Reference

```bash
# Navigate to project
cd soft-sculpture-store

# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview

# Remove .bolt folder
rm -rf .bolt

# Initialize git
git init
git add .
git commit -m "Initial commit"
```

---

## Verify Everything Works

After setup, you should see:

✅ Development server running at http://localhost:5173  
✅ All pages load correctly  
✅ Shopping cart works  
✅ Login/signup forms validate  
✅ Checkout calculates totals  
✅ Database connected (if using MySQL)  
✅ No console errors  
✅ No Bolt.new branding visible  

---

## Troubleshooting

### "npm install fails"
```bash
# Clear npm cache
npm cache clean --force

# Try installing again
npm install
```

### "Port 5173 already in use"
```bash
# Use different port
npm run dev -- --port 3000
```

### "MySQL connection failed"
- Check MySQL is running
- Verify username/password
- Ensure database exists: `soft_sculpture_db`

### "Database tables not found"
```bash
# Re-import the SQL file
mysql -u root -p soft_sculpture_db < DATABASE_SETUP.sql
```

### ".bolt still shows in VS Code"
1. Press Ctrl+Shift+P (Cmd+Shift+P on Mac)
2. Type "Reload Window"
3. Press Enter
4. VS Code will reload

---

## Next Steps

1. **Customize the brand**: Change colors, fonts, business info
2. **Add product images**: Place images in `/assets/` folder
3. **Set up backend**: Implement backend API (see BACKEND_API.md)
4. **Deploy**: Push to GitHub, deploy to Vercel/Netlify
5. **Connect real database**: Replace localhost with production database

---

**You now fully own the Soft Sculpture Store project!** 🎉

No Bolt branding, completely customizable, ready for production.

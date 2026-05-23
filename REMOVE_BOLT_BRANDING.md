# How to Remove ALL Bolt.new Branding - Complete Checklist

This guide shows you exactly how to remove every trace of Bolt.new and make this project 100% yours.

---

## ✅ Step 1: Delete .bolt Folder (If It Exists)

The `.bolt` folder contains Bolt.new configuration and branding data.

### Method 1: VS Code (Easiest)
1. Open project in VS Code
2. Look at the file explorer on the left
3. If you see a `.bolt` folder, right-click it
4. Select **"Delete"**
5. Confirm deletion
6. Done!

### Method 2: Terminal

**Mac/Linux:**
```bash
rm -rf .bolt
```

**Windows (PowerShell):**
```bash
Remove-Item -Recurse -Force .bolt
```

**Windows (Command Prompt):**
```bash
rmdir /s /q .bolt
```

---

## ✅ Step 2: Remove From .gitignore

The `.bolt` folder might be listed in `.gitignore`. Remove the reference.

1. Open `.gitignore` file in VS Code
2. Look for this line:
   ```
   .bolt/
   ```
3. Delete that line
4. Save the file

---

## ✅ Step 3: Update package.json

Make the project yours in `package.json`:

1. Open `package.json`
2. Find this section:
   ```json
   {
     "name": "vite-react-typescript-starter",
     "private": true,
     "version": "0.0.0"
   }
   ```

3. Change it to:
   ```json
   {
     "name": "soft-sculpture-store",
     "private": true,
     "version": "1.0.0",
     "description": "E-commerce website for handmade fuzzy wire soft sculptures",
     "author": "Your Name Here",
     "license": "MIT"
   }
   ```

4. Save the file

---

## ✅ Step 4: Clean HTML Files

The HTML files are already clean, but let's verify:

### Check Each HTML File

Open these files and look for Bolt references:
- index.html
- shop.html
- cart.html
- checkout.html
- login.html
- signup.html
- about.html
- contact.html
- terms.html
- shipping.html

**You should NOT see:**
```html
bolt.new
Made by Bolt
Powered by Bolt
og:image content="https://bolt.new/..."
```

**You SHOULD see:**
```html
<title>Soft Sculpture - ...</title>
<link rel="icon" type="image/png" href="/assets/favicon.png">
```

---

## ✅ Step 5: Remove Old React Files

These files are no longer used and should be deleted:

1. Open `src/` folder
2. Delete these files:
   - `App.tsx` ❌ DELETE
   - `main.tsx` ❌ DELETE
   - `vite-env.d.ts` (optional, you can keep this)

**In VS Code:**
- Right-click each file
- Select "Delete"

**Or in terminal:**
```bash
rm src/App.tsx
rm src/main.tsx
```

---

## ✅ Step 6: Remove TypeScript Config Files (Optional)

If you don't use TypeScript, you can delete these:
- `tsconfig.json` (keep if you might use TS later)
- `tsconfig.app.json` ❌ OPTIONAL DELETE
- `tsconfig.node.json` ❌ OPTIONAL DELETE

**Keep tsconfig.json though, it doesn't hurt.**

---

## ✅ Step 7: Update README.md

Make sure the README.md reflects YOUR project:

1. Open `README.md`
2. Change the title to:
   ```markdown
   # Soft Sculpture Store
   
   A beautiful e-commerce website for handmade fuzzy wire soft sculptures.
   Built with HTML, CSS (Tailwind), and JavaScript.
   
   Author: Your Name  
   Created: 2024
   ```

3. Remove any mention of "Bolt" or "bolt.new"
4. Save the file

---

## ✅ Step 8: Delete Extra Zip File (Optional)

If you downloaded the zip file and extracted it:

```bash
# Delete the zip file (you already have the extracted folder)
rm soft-sculpture-store.zip
```

---

## ✅ Step 9: Initialize New Git Repository

This removes any Bolt.new git history:

```bash
# Navigate to your project folder
cd soft-sculpture-store

# Remove old git history (if any)
rm -rf .git

# Initialize new git as YOUR project
git init

# Add all files
git add .

# Make first commit
git commit -m "Initial commit - Soft Sculpture Store

- E-commerce website for handmade fuzzy wire sculptures
- Built with HTML, CSS (Tailwind), JavaScript
- MySQL database included
- Ready for production"
```

---

## ✅ Step 10: Update Business Information

Make sure all your business information is consistent throughout:

### Search and Update These:
```
Email:    info@softsculpture.com
Phone:    +63 (555) 123-4567
Address:  Valenzuela City, Metro Manila
```

**How to do this:**
1. Press `Ctrl+Shift+F` (or `Cmd+Shift+F` on Mac)
2. This opens "Find in Files"
3. Search for "info@softsculpture.com"
4. Replace with your email
5. Repeat for phone and address

---

## ✅ Step 11: Add Your Own Favicon

The current favicon is a placeholder. Add your own:

1. Create or find a favicon image (PNG, ICO, or SVG)
2. Save it as `favicon.png` or `favicon.ico`
3. Place it in a new folder: `/assets/favicon.png`

**Create assets folder:**
```bash
mkdir assets
# Then copy your favicon.png into it
```

**Update HTML files** (should already be correct):
```html
<link rel="icon" type="image/png" href="/assets/favicon.png">
```

---

## ✅ Step 12: Update Vite Config (Already Done)

Your `vite.config.ts` already has the correct setup with no Bolt references. Nothing to change here!

```typescript
// Current vite.config.ts is correct - no changes needed
```

---

## 🧹 Final Cleanup Checklist

Before considering the project "yours", verify:

- [ ] `.bolt` folder deleted
- [ ] `App.tsx` deleted
- [ ] `main.tsx` deleted
- [ ] package.json updated with your info
- [ ] README.md updated
- [ ] No Bolt mentions in any files
- [ ] Business info updated (email, phone, address)
- [ ] Favicon added at `/assets/favicon.png`
- [ ] New git repository initialized
- [ ] `npm install` runs without errors
- [ ] `npm run dev` shows the site at http://localhost:5173
- [ ] No console errors in DevTools
- [ ] All pages load correctly

---

## 🔍 Verify No Bolt References Remain

Run this command to search for any remaining Bolt mentions:

```bash
# Search for "bolt" in all files
grep -r "bolt" . --ignore-case

# Search for "made by" in all files
grep -r "made by" . --ignore-case

# If nothing shows up, you're clean!
```

---

## 🎉 Congratulations!

Your project is now:
✅ **100% Yours** - No Bolt branding  
✅ **Clean** - Only necessary files  
✅ **Production Ready** - Ready to deploy  
✅ **Professional** - Your own project  

---

## 📦 Project Structure After Cleanup

```
soft-sculpture-store/
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
│   ├── main.js
│   ├── utils.js
│   ├── shop.js
│   ├── cart.js
│   ├── checkout.js
│   ├── login.js
│   ├── signup.js
│   ├── contact.js
│   └── index.css
├── assets/
│   └── favicon.png
├── package.json
├── vite.config.ts
├── tailwind.config.js
├── postcss.config.js
├── tsconfig.json
├── .gitignore
├── DATABASE_SETUP.sql
├── README.md
└── LOCAL_SETUP_GUIDE.md
```

---

## 🚀 Next Steps

1. **Set up locally:** Follow `LOCAL_SETUP_GUIDE.md`
2. **Customize:** Update colors, products, images
3. **Connect database:** Set up MySQL locally or on a server
4. **Deploy:** Push to GitHub and deploy to Vercel/Netlify
5. **Go live:** Update domain and launch!

---

## ❓ Questions?

Refer to:
- **LOCAL_SETUP_GUIDE.md** - How to set up locally
- **FILES_TO_KEEP.md** - Which files you need
- **DATABASE_SETUP.sql** - Database schema
- **README.md** - Quick reference

---

**Your project is now completely yours!** 🎉

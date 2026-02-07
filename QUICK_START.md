# Quick Start Guide - Reneu Cap Table App

## What You Have

You now have a complete, ready-to-deploy web application that visualizes your capitalization table with:

✅ **Interactive cap table modeling**
✅ **Real-time parameter adjustments**
✅ **Beautiful charts and visualizations**
✅ **Mobile-responsive design**
✅ **Exit scenario analysis**
✅ **Professional branding**

## Files Included

```
📁 Your Package
├── index.html          # Main application (self-contained)
├── README.md           # Complete documentation
├── deploy.sh           # Automated deployment script
├── .gitignore          # Git ignore rules
└── .github/
    └── workflows/
        └── deploy.yml  # Auto-deployment configuration
```

## Deployment Options

### 🚀 OPTION 1: Super Quick (5 minutes)

**Best for: First-time GitHub Pages users**

1. **Create a GitHub account** (if you don't have one)
   - Go to https://github.com/signup

2. **Create a new repository**
   - Click the "+" icon in the top right
   - Select "New repository"
   - Name it: `reneu-cap-table`
   - Make it Public
   - Click "Create repository"

3. **Upload your files**
   - On the repository page, click "uploading an existing file"
   - Drag and drop ALL files from this package
   - Commit with message: "Initial commit"

4. **Enable GitHub Pages**
   - Go to Settings > Pages
   - Under "Source", select "main" branch
   - Click Save
   - Wait 2-3 minutes

5. **Done!** Your site will be live at:
   `https://YOUR_USERNAME.github.io/reneu-cap-table/`

### 💻 OPTION 2: Command Line (Recommended for developers)

**Best for: Git users who want version control**

```bash
# 1. Create a new repository on GitHub (via web interface)

# 2. In your terminal, navigate to where you want the project
cd ~/Projects

# 3. Clone your empty repository
git clone https://github.com/YOUR_USERNAME/reneu-cap-table.git
cd reneu-cap-table

# 4. Copy all the files from this package into the directory

# 5. Run the deployment script
./deploy.sh

# Follow the prompts - it will guide you through the rest!
```

### 🤖 OPTION 3: Automatic Deployment (Advanced)

**Best for: Continuous updates and team collaboration**

The `.github/workflows/deploy.yml` file is already configured. Once you push to GitHub:

- Every commit to `main` branch automatically deploys
- No manual intervention needed
- Changes go live in 2-3 minutes

## Customizing Your App

### Change Default Values

Edit `index.html` and find these lines (around line 53):

```javascript
const [preSeedAmount, setPreSeedAmount] = useState(200000);
const [preSeedDiscount, setPreSeedDiscount] = useState(20);
const [preSeedCap, setPreSeedCap] = useState(7000000);
const [seedAmount, setSeedAmount] = useState(500000);
const [seriesAAmount, setSeriesAAmount] = useState(3000000);
```

Change the numbers to match your terms.

### Update Business Metrics

Find the "Key Metrics Summary" section (around line 800):

```html
<div className="text-2xl font-bold text-gray-900">$2,861</div>
<div className="text-xs text-green-600 mt-1">37% monthly growth</div>
```

Update these to reflect your current numbers.

### Add Your Logo

To add a logo, insert this in the header section:

```html
<img src="YOUR_LOGO_URL" alt="Reneu Logo" className="h-12" />
```

## Testing Locally

Before deploying, test the app locally:

**Method 1: Double-click `index.html`**
- Just open it in your browser
- Works for basic testing

**Method 2: Local server (recommended)**
```bash
# Using Python (if installed)
python3 -m http.server 8000

# Then open: http://localhost:8000
```

## Sharing Your App

Once deployed, share your app:

📧 **Email investors**: "View our interactive cap table at [your-url]"
📊 **In pitch decks**: Add as a clickable link
💼 **Board meetings**: Project it live and adjust parameters
📱 **Mobile friendly**: Works on phones and tablets

## Security & Privacy

⚠️ **Important Notes:**

1. **Public Repository** = Anyone can see your code and numbers
   - If you want privacy, make the repository Private
   - GitHub Pages will still work with private repos (requires GitHub Pro)

2. **Change default values** before sharing publicly
   - The current numbers are from your budget spreadsheet
   - Update to reflect actual terms

3. **Sensitive Information**
   - Don't put actual bank accounts or SSNs in the code
   - Contact emails are OK (they're already public on your site)

## Troubleshooting

### "404 Not Found" after deployment
- Wait 5 minutes (GitHub Pages needs time to build)
- Check Settings > Pages to confirm it's enabled
- Verify the branch is set to "main"

### App looks broken
- Check browser console (F12) for errors
- Make sure all files were uploaded
- Clear browser cache and refresh

### Charts not showing
- Ensure you have internet connection (Recharts loads from CDN)
- Try a different browser
- Check if JavaScript is enabled

## Advanced Features

### Adding More Exit Scenarios

In `index.html`, find the `exitScenarios` array:

```javascript
const exitScenarios = [
  { name: 'Conservative', value: 60000000 },
  { name: 'Base Case', value: 80000000 },
  { name: 'Optimistic', value: 100000000 },
  // Add more here:
  { name: 'Moonshot', value: 150000000 }
];
```

### Custom Branding

Change colors by finding and replacing hex codes:
- `#3b82f6` = Blue (Jesse)
- `#8b5cf6` = Purple (Nick)
- `#10b981` = Green (Seed investors)
- `#ef4444` = Red (Series A investors)

## Getting Help

**Need changes?**
- Edit `index.html` directly
- It's all in one file - no build process needed
- Changes take effect immediately

**Technical issues?**
- Check the README.md for detailed documentation
- GitHub Pages docs: https://pages.github.com
- React docs: https://react.dev

**Questions about cap table calculations?**
- Review the code comments in `index.html`
- Compare with your CSV file
- Consult with your attorney/accountant

## Next Steps

1. ✅ Deploy the app to GitHub Pages
2. ✅ Test all the tabs and features
3. ✅ Update with your actual terms (if different)
4. ✅ Share with your team and investors
5. ✅ Use in fundraising conversations
6. ✅ Keep updated as terms change

## Pro Tips

💡 **Use in investor meetings**: Project it on screen and adjust parameters live based on investor questions

💡 **Board decks**: Include the link - more engaging than static cap tables

💡 **Due diligence**: Investors appreciate transparency and interactive models

💡 **Scenario planning**: Model different fundraising strategies with your team

💡 **Version control**: Use git to track how your cap table evolves

## Support

Questions? Contact:
- **Nick Cudzilo**: nick@reneuwellnessclub.com
- **Jesse Cudzilo**: jesse@reneuwellnessclub.com

---

**You're all set!** This is a professional, investor-ready tool that will make your fundraising conversations more engaging and transparent. Good luck with your pre-seed round! 🚀

# Reneu Wellness Club - Interactive Capitalization Table

An interactive web application for modeling and visualizing Reneu Wellness Club's capitalization table, funding scenarios, and exit analysis.

## Features

- **Current Cap Table**: View the current 50/50 founder ownership structure
- **Adjustable Parameters**: Modify pre-seed, seed, and Series A funding terms in real-time
- **Funding Scenarios**: Visualize ownership dilution across different funding rounds
- **Exit Analysis**: Model returns for investors and founders across three exit scenarios
- **Interactive Charts**: Beautiful pie charts and bar graphs powered by Recharts
- **Responsive Design**: Works on desktop, tablet, and mobile devices

## Live Demo

[View the live app on GitHub Pages](https://YOUR_USERNAME.github.io/reneu-cap-table/)

## Deployment to GitHub Pages

### Option 1: Quick Deploy (Recommended)

1. **Create a new GitHub repository**
   ```bash
   # Create a new repository on GitHub named "reneu-cap-table"
   # Then clone it locally
   git clone https://github.com/YOUR_USERNAME/reneu-cap-table.git
   cd reneu-cap-table
   ```

2. **Add the index.html file**
   ```bash
   # Copy the index.html file to your repository
   cp /path/to/index.html .
   
   # Add and commit
   git add index.html
   git commit -m "Initial commit: Add cap table app"
   git push origin main
   ```

3. **Enable GitHub Pages**
   - Go to your repository on GitHub
   - Click on **Settings** > **Pages**
   - Under "Source", select **main** branch and **/ (root)** folder
   - Click **Save**
   - Your site will be published at `https://YOUR_USERNAME.github.io/reneu-cap-table/`

### Option 2: Deploy with GitHub Actions

1. **Create the repository and add files** (same as Option 1, step 1-2)

2. **Create GitHub Actions workflow**
   Create `.github/workflows/deploy.yml`:
   ```yaml
   name: Deploy to GitHub Pages
   
   on:
     push:
       branches: [ main ]
   
   jobs:
     deploy:
       runs-on: ubuntu-latest
       steps:
         - uses: actions/checkout@v3
         
         - name: Deploy to GitHub Pages
           uses: peaceiris/actions-gh-pages@v3
           with:
             github_token: ${{ secrets.GITHUB_TOKEN }}
             publish_dir: .
   ```

3. **Push and auto-deploy**
   ```bash
   git add .github/workflows/deploy.yml
   git commit -m "Add GitHub Actions deployment"
   git push origin main
   ```

## Local Development

To test the app locally before deploying:

1. **Simply open the HTML file**
   ```bash
   # On macOS
   open index.html
   
   # On Linux
   xdg-open index.html
   
   # On Windows
   start index.html
   ```

2. **Or use a local server** (recommended for avoiding CORS issues)
   ```bash
   # Using Python 3
   python3 -m http.server 8000
   
   # Using Node.js
   npx http-server
   
   # Then visit http://localhost:8000
   ```

## Customization

### Updating Default Values

Edit the initial `useState` values in `index.html`:

```javascript
const [preSeedAmount, setPreSeedAmount] = useState(200000);     // Pre-seed amount
const [preSeedDiscount, setPreSeedDiscount] = useState(20);     // Discount %
const [preSeedCap, setPreSeedCap] = useState(7000000);          // Valuation cap
const [seedAmount, setSeedAmount] = useState(500000);            // Seed amount
const [seriesAAmount, setSeriesAAmount] = useState(3000000);    // Series A amount
```

### Changing Colors

Modify the color values in the chart data arrays:

```javascript
const currentChartData = [
  { name: 'Jesse Cudzilo (CEO)', value: calculations.current.jesse, color: '#3b82f6' },
  { name: 'Nicholas Cudzilo (CTO)', value: calculations.current.nick, color: '#8b5cf6' }
];
```

### Adding Exit Scenarios

Add more scenarios to the `exitScenarios` array:

```javascript
const exitScenarios = [
  { name: 'Conservative', value: 60000000 },
  { name: 'Base Case', value: 80000000 },
  { name: 'Optimistic', value: 100000000 },
  { name: 'Moonshot', value: 150000000 }  // Add your scenario here
];
```

## Technical Stack

- **React 18**: UI framework
- **Recharts 2.5**: Data visualization
- **Tailwind CSS**: Styling and design
- **Babel Standalone**: JSX transformation (no build step required)

## Browser Support

- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## File Structure

```
reneu-cap-table/
├── index.html              # Main application file
├── README.md               # This file
└── .github/
    └── workflows/
        └── deploy.yml      # GitHub Actions deployment (optional)
```

## Key Calculations

The app performs the following calculations:

1. **Post-Seed Ownership**: Based on pre-money valuation and investment amount
2. **Convertible Note Conversion**: Uses the better of discount rate or valuation cap
3. **Post-Series A Ownership**: Accounts for dilution from all funding rounds
4. **Exit Returns**: Calculates ROI multiples for each investor class
5. **Founder Value**: Computes founder payout at various exit valuations

## Screenshots

### Current Cap Table
![Current Cap Table](screenshots/current-cap.png)

### Funding Scenarios
![Funding Scenarios](screenshots/scenarios.png)

### Exit Analysis
![Exit Analysis](screenshots/exits.png)

## Support & Contact

For questions or support:

- **Jesse Cudzilo, CEO**: jesse@reneuwellnessclub.com
- **Nicholas Cudzilo, Founder**: nick@reneuwellnessclub.com

## License

© 2025 Reneu Wellness Club LLC. All rights reserved.

This application is proprietary and confidential. Unauthorized copying, distribution, or use is strictly prohibited.

## Acknowledgments

Built with ❤️ for Reneu Wellness Club - Service-Disabled Veteran-Owned Small Business (SDVOSB)

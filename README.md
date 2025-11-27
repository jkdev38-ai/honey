# Golden Hive Honey - Landing Page

Elegant landing page for Golden Hive Honey, featuring premium artisan honey products.

## Features

- Responsive design optimized for all devices
- Modern CSS with smooth animations
- Product showcase with interactive cards
- Customer testimonials
- Contact form integration
- SEO optimized

## Deployment

### Railway Deployment

This project is configured for easy deployment on Railway:

1. **Connect your repository to Railway**
   - Go to [railway.app](https://railway.app)
   - Create a new project
   - Connect your GitHub repository

2. **Automatic deployment**
   - Railway will automatically detect the Dockerfile
   - The app will be built and deployed automatically
   - You'll get a live URL for your landing page

### Local Development

To run locally with Docker:

```bash
# Build the Docker image
docker build -t golden-hive-honey .

# Run the container
docker run -p 8080:80 golden-hive-honey
```

Then visit `http://localhost:8080`

### Files Structure

```
├── index.html          # Main landing page
├── Dockerfile          # Docker configuration for Railway
├── railway.toml        # Railway deployment settings
└── README.md          # This file
```

### Adding Images

Place your honey jar images in the same directory as index.html:
- `logo.png` - Company logo
- `honey-jar-mockup-1.png` - Hero section jar
- `honey-jar-mockup-2.png` - Classic wildflower honey
- `honey-jar-mockup-3.png` - Eucalyptus honey
- `honey-jar-mockup-4.png` - Breakfast trio set

## Technologies Used

- HTML5
- CSS3 (Custom properties, Grid, Flexbox)
- Vanilla JavaScript
- Nginx (for serving static files)
- Docker (for containerization)

## Contact

For questions about the website or Golden Hive Honey products, use the contact form on the landing page.
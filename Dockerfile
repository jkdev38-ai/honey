# Use nginx alpine for a lightweight web server
FROM nginx:alpine

# Copy the HTML file to the nginx html directory
COPY index.html /usr/share/nginx/html/

# Copy any additional assets if they exist
COPY *.png /usr/share/nginx/html/ 2>/dev/null || true
COPY *.jpg /usr/share/nginx/html/ 2>/dev/null || true
COPY *.jpeg /usr/share/nginx/html/ 2>/dev/null || true
COPY *.svg /usr/share/nginx/html/ 2>/dev/null || true
COPY *.ico /usr/share/nginx/html/ 2>/dev/null || true

# Create a custom nginx configuration
RUN echo 'server {' > /etc/nginx/conf.d/default.conf && \
    echo '    listen 80;' >> /etc/nginx/conf.d/default.conf && \
    echo '    server_name localhost;' >> /etc/nginx/conf.d/default.conf && \
    echo '    location / {' >> /etc/nginx/conf.d/default.conf && \
    echo '        root /usr/share/nginx/html;' >> /etc/nginx/conf.d/default.conf && \
    echo '        index index.html;' >> /etc/nginx/conf.d/default.conf && \
    echo '        try_files $uri $uri/ /index.html;' >> /etc/nginx/conf.d/default.conf && \
    echo '    }' >> /etc/nginx/conf.d/default.conf && \
    echo '    # Enable gzip compression' >> /etc/nginx/conf.d/default.conf && \
    echo '    gzip on;' >> /etc/nginx/conf.d/default.conf && \
    echo '    gzip_types text/html text/css application/javascript image/svg+xml;' >> /etc/nginx/conf.d/default.conf && \
    echo '    gzip_min_length 1000;' >> /etc/nginx/conf.d/default.conf && \
    echo '}' >> /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
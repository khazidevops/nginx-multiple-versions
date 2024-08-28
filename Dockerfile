# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy all versions of the application
COPY version1 /usr/share/nginx/html/version1
COPY version2 /usr/share/nginx/html/version2
#COPY version3 /usr/share/nginx/html/version3

# Copy the custom Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

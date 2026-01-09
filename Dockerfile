# Use official Nginx image
FROM nginx:alpine
# Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*
# Copy our single-page application
COPY index.html /usr/share/nginx/html/
# Expose port 80
EXPOSE 80
# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
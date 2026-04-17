# Use Nginx to serve static files
FROM nginx:alpine
# Copy your html and image into the Nginx server folder
COPY index.html /usr/share/nginx/html/index.html
COPY stadium_map.png /usr/share/nginx/html/stadium_map.png
# Expose port 80
EXPOSE 80
# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

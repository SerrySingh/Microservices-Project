# Use the official Nginx image as the base image
FROM nginx

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration file into the container
COPY nginx.conf /etc/nginx/conf.d/nginx.conf

# Expose port 80 to the host
EXPOSE 80

# Start Nginx in the foreground when the container starts
CMD ["nginx", "-g", "daemon off;"]


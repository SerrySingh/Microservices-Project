# Use an official Redis image as a base image
FROM redis:latest

# Copy the custom configuration file into the container
COPY redis.conf /etc/redis/redis.conf

# Expose the default Redis port
EXPOSE 6379

# Command to run Redis with the custom configuration file
CMD ["redis-server", "/etc/redis/redis.conf"]


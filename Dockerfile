# Use a base image with a lightweight web server
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the HTML project files to the container
COPY . .

# Expose port 80 to make the web server accessible
EXPOSE 80

# Command to start the web server
CMD ["nginx", "-g", "daemon off;"]

# Use a base image with a lightweight web server
FROM npm:10.1.0

# Set the working directory inside the container
WORKDIR /html
# Copy the HTML project files to the container
COPY . .

# Expose port 80 to make the web server accessible
EXPOSE 80

#run 
RUN npm install

# Command to start the web server
CMD ["npm", "run", "start"]

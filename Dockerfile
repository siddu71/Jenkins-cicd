# Use the official nginx image as the base image
FROM nginx

# Define the working directory
WORKDIR /usr/share/nginx/html

# Copy the HTML file to the container's HTML directory
COPY index.html .

# Expose port 80
EXPOSE 80

# Define the default command
CMD ["nginx", "-g", "daemon off;"]

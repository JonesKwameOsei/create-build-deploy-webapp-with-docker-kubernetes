# Dockerfile for Camper Cafe Menu

# Step 1: Use an official lightweight Node.js image as the base image
FROM nginx:alpine

# Step 2: Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Step 3: Copy the HTML and CSS files into the container
COPY index.html .
COPY styles.css .

# Expose port 80 to access the container on the web
EXPOSE 80

# Step 4: Use Nginx to serve the static files
CMD ["nginx", "-g", "daemon off;"]

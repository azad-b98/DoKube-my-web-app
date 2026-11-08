# Step 1: Use an official Nginx web server image as our starting point
FROM nginx:alpine

# Step 2: Copy our index.html file from our computer into the web server's folder inside the container
COPY index.html /usr/share/nginx/html/index.html

# Step 3: Inform Docker that the container will listen on network port 80 (standard web port)
EXPOSE 80

# Use a base image
FROM nginx:latest

# Copy custom configuration file
#COPY nginx.conf /etc/nginx/nginx.conf

#Working directory
#WORKDIR /usr/share/my-app

# Copy static files path
#COPY <source-path> <destination-path>
COPY index.html /usr/share/nginx/html/

#COPY default.conf/ /etc/nginx/conf.d/

# Expose the required port
EXPOSE 80

# Start NGINX when the container launches
CMD ["nginx", "-g", "daemon off;"]

FROM nginx:stable-alpine

# Copy site into nginx html folder
COPY . /usr/share/nginx/html

# Ensure correct permissions (optional)
RUN chown -R nginx:nginx /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
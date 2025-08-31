# Dockerfile — ASD static site on Back4App Containers
FROM nginx:stable-alpine

# Our NGINX vhost (adds 404 + caching headers)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the baked site (ASD lives in parametric-static/)
COPY parametric-static/ /usr/share/nginx/html/

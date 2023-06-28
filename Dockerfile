# Use the official lightweight Node.js LTS image.
# https://hub.docker.com/_/node
FROM node:lts-alpine as node

# Create and change to the app directory.
WORKDIR /app

# Copy local code to the container image.
COPY . .

# Update npm and install dependencies.
RUN npm install --location=global npm@latest
RUN npm install

# Build the application
RUN npm run build --omit=dev

# Use the official lightweight Nginx image.
# https://hub.docker.com/_/nginx
FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html/*

# Copy the application to the container image.
COPY --from=node /app/dist/demo-gcp /usr/share/nginx/html

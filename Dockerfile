# Stage 1: Build the app
FROM node:18-alpine AS build
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install --production
COPY . .

# Expose the port (Make sure it matches the environment variable)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

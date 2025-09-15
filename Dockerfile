# Use the official Node.js 16 Alpine image as the base image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY src/package*.json ./

# Install the dependencies
RUN npm install --production

# Copy the application code to the working directory
COPY src/server.js ./
COPY src/public ./public/

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["npm", "start"]

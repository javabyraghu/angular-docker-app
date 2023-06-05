# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install project dependencies
RUN npm install

# Copy the project files to the working directory
COPY . .

# Build the Angular app for production
RUN npm run build

# Expose port 80 for the container
EXPOSE 80

# Define the command to run the app when the container starts
CMD [ "node", "server.js" ]

# Use Node.js 16 as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package files into the container
COPY package*.json ./

# Install the required dependencies
RUN npm install

# Copy the remaining application files
COPY . .

# Expose port 3000 for the application
EXPOSE 3000

# Start the Node.js application
CMD ["npm", "start"]
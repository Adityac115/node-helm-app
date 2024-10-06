FROM node:20-slim

# Set the working directory in the container
WORKDIR /app

# Copy only package.json and package-lock.json (if available) first
COPY package.json package-lock.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Uncomment this if your app runs on port 3000
# EXPOSE 3000

# Start the application
CMD ["node", "app.js"]


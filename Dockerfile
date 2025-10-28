FROM node:16-alpine

# Set working directory inside container
WORKDIR /app

# Copy package files first for efficient caching
#COPY package*.json ./

# Install dependencies
RUN npm install 

# Copy rest of the application code
RUN npm test

# Expose the port your app runs on (example: 3000)
EXPOSE 3000

# Define environment variable
ENV NODE_ENV=production

# Run the app
CMD ["node", "index.js"]

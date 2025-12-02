# Use Node 18
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy remaining files
COPY . .

# Expose container port
EXPOSE 3000

# Command to run app
CMD ["npm", "start"]


FROM node:16-alpine

WORKDIR /app

# Copy package.json and package-lock.json into container
COPY package*.json ./

# Install node packages
RUN npm install

# Copy all other files to container
COPY . .

# Build the app
RUN npm run build

# Install the serve package
RUN npm install -g serve


# Expose port 
EXPOSE 5000

# Start the serve command to serve the static files
CMD ["serve", "-s", "-l", "5000", "build"]

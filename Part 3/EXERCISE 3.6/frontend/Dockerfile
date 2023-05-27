FROM node:16-alpine

WORKDIR /app

# Copy package.json and package-lock.json into container
COPY package*.json ./

# Install node packages
RUN npm install

# Copy all files to container
COPY . .

# Build the app
RUN npm run build && \
	npm install -g serve && \
	adduser -D myuser && \
	chown -R myuser:myuser /app

# Expose port
EXPOSE 5000

# Start the serve command to serve the static files as the non-root user
USER myuser

CMD ["serve", "-s", "-l", "5000", "build"]

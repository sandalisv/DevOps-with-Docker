FROM node:16-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

RUN npm install -g serve

# Create a non-root user
RUN adduser -D myuser

# Set the ownership of the working directory to the non-root user
RUN chown -R myuser:myuser /app

EXPOSE 5000

# Start the serve command as the non-root user
USER myuser

CMD ["serve", "-s", "-l", "5000", "build"]

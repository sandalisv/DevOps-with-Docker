# Stage 1
FROM node:16 as builder

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

# Stage 2
FROM node:16-alpine

RUN npm install -g serve

WORKDIR /app

COPY --from=builder /app/build /app/build

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]

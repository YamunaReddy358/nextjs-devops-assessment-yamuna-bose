FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Add this line to build the app
RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]

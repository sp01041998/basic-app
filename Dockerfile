FROM node:14.17.0
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install -f
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]

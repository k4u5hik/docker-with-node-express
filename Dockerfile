// baseimage
FROM node:15
//Optional but recommended - workdir to set the working directory for the application
WORKDIR /app
COPY package.json .
RUN npm install
COPY . ./
EXPOSE 3000
CMD ["node", "index.js"]
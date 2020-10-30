FROM node:6-alpine
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 5555

CMD ["npm", "start"]

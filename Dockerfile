FROM node:12.2.0-alpine
WORKDIR app
COPY . .
RUN npm install
RUN  sudo rm -rf node_modules package-lock.json
RUN npm install
EXPOSE 8000
CMD ["node","app.js"]

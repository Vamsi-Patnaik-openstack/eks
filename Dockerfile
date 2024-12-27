FROM node:16
WORKDIR /application/src/app
COPY app.js .
RUN npm cache clean --force
RUN npm install --verbose
RUN npm fund
EXPOSE 4000
CMD ["node", "app.js"]

FROM node:10
WORKDIR /app
COPY . .
RUN install pm2 -g && npm install
EXPOSE 3000
CMD ["/bin/sh", "-c", "pm2-runtime 'npm start'"]

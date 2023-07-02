# Melakukan pull image node versi 14 dari Docker Hub
FROM node:14.21.3-alpine3.17

# Membuat sebuah Working Directory
WORKDIR /app

# Melakukan copy pada eluruh source code ke working directory di container
COPY . .

# Membuat environment atau menentukan agar aplikasi dapat berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host.
ENV NODE_ENV=production DB_HOST=item-db

# Melakukan instalasi dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Melakukan ekspos pada port 8080
EXPOSE 8080

# Menjalankan server dengan perintah npm start saat container diluncurkan.
CMD [ "npm", "start" ]
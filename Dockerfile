# Menggunakan Node.js versi 14 sebagai base image
FROM node:14

# Menentukan working directory pada container
WORKDIR /app

# Menyalin seluruh source code ke working directory pada container
COPY . .

# Environment Variable untuk menentukan aplikasi berjalan dengan mode production dan menggunakan container item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstall dependency untuk production dan melakukan build aplikasi
RUN npm install --unsafe-perm && npm run build

# Mengekspos port 8080
EXPOSE 8080

# Menjalankan server menggunakan `npm start`
CMD ["npm", "start"]

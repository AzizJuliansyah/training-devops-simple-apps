# Images yang digunakan sebagai base image dengan os alpine
FROM node:18-alpine

# Set working directory di dalam container
WORKDIR /app

# Copy file package.json ke working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy semua file dari host ke working directory di dalam container
COPY . .

# Expose port yang akan digunakan oleh aplikasi
EXPOSE 3000

# Perintah untuk menjalankan aplikasi
CMD ["npm", "start"]
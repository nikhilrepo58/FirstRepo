# 1. Base image
FROM node:18

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy files
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy rest of the code
COPY . .

# 6. Expose port
EXPOSE 3000

# 7. Start the app
CMD ["npm", "start"]
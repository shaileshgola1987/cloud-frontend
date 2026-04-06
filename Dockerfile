# 1. Use official Node.js image
FROM node:20-alpine

# 2. Set working directory
WORKDIR /app

# 3. Copy package files first (for caching)
COPY package.json package-lock.json* ./

# 4. Install dependencies
RUN npm install

# 5. Copy all project files
COPY . .

# 6. Build Next.js app
RUN npm run build

# 7. Expose port 3300
EXPOSE 3300

# 8. Set environment variable for port
ENV PORT=3300

# 9. Start the app
CMD ["npm", "start"]
FROM node:20-alpine

WORKDIR /app

# Copy dependencies
COPY package.json package-lock.json* ./
RUN npm install

# Copy app code
COPY . .

# Expose port
EXPOSE 3300

# Start React app (uses HOST + PORT from package.json)
CMD ["npm", "start"]
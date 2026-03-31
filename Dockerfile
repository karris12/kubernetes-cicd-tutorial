# Use modern Node version
FROM node:18

WORKDIR /app

# Copy package files
COPY src/package*.json ./

# Install dependencies safely
RUN npm install --legacy-peer-deps

# Copy application code
COPY src/ .

# Expose port
EXPOSE 3000

# Start app
CMD ["node", "app.js"]]

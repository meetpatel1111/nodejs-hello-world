# Base Image
FROM node:16

# Change working directory
WORKDIR /app

# Copy dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy other code
COPY . .

# Expose the app port
EXPOSE 80

# start app
CMD [ "npm" "start" ]
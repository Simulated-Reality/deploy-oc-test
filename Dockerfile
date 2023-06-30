FROM node:16.20.0

# Set the working directory in the Docker image
WORKDIR /app

# Copy the application files to the Docker image
COPY package.json .
COPY package-lock.json .

# Install the application dependencies
RUN npm install

# Copy the project files to the Docker image
COPY . .

# Expose the port used by the application
EXPOSE 8000

# Start the application using the "npm start" command
CMD ["npm", "start"]

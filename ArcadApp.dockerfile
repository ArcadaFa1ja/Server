# Use an official Node.js runtime as a parent image
FROM node:18
# Clone the server project repository
RUN git clone https://github.com/ArcadaFa1ja/Server.git /server
# Set the working directory to /server
WORKDIR /server

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the server files and environment variables into the container
COPY server.js .
COPY .env .env

# Expose port 3000 to the outside world (localhost at the moment, when deployed we need new url/adress)
EXPOSE 3000

# Define environment variables (if necessary)
# ENV 

# Command to run the application
CMD ["node", "server.js"]

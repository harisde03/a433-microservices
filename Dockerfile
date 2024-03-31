# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container to /app
WORKDIR /src

# Bundle app source inside the docker image
COPY . .

# Install any needed packages specified in package.json
RUN npm install

# Install any needed packages specified in package-lock.json
RUN npm ci

# Make bash available using apk package manager
RUN apk add --no-cache bash

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define the command to run your app using CMD which defines your runtime
CMD [ "npm", "start" ]
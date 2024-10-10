# Use an official Node.js runtime as a parent image
FROM node:20-alpine

# Set the working directory
WORKDIR /app 

# Copy package.json file into the container at /app
COPY package.json /app

# Install any needed packages specified in package.json
RUN npm install

# Copy the rest of the code into the container at /app
COPY . /app

# Make port 3000 available to the world outside this container
EXPOSE 3000

# build the app
RUN npm run build

# Run app.js when the container launches
CMD ["npm","run","preview"]

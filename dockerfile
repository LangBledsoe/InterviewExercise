# Specify the base image as node with your desired version
# Each Dockerfile must begin with a FROM instruction
# A base image contains all the pre-configured files and settings needed for a specific environment
FROM node:16

# The app directory created to be used as the location within the container
# You can make this whatever you want, but this seems to be a common convention
WORKDIR /usr/src/app

# Copies package.json and package-lock.json to the directory I made
COPY package*.json ./

# Installs app dependencies specified in package.json
# Also installs any required Node modules
RUN npm install

# Copy all other files from the local project directory to the container
COPY . .

# Expose the port the app runs on
# This is really just a documentation mechanism
# This instuction doesn't result in a port being automatically bound when the container starts
EXPOSE 80

# The command that gets run when the container is ready
# Each value in the array is a seperate argument in the command line
CMD ["node", "app.js"]
FROM node:18-alpine3.16
#we are starting with a base image of node 18

#setup our working directory within the container
WORKDIR /src/

#opy our code for the host machine to the container
COPY . .

#install our dependencies
RUN npm install

#expose the port we want to run on
EXPOSE 3000

#run out application
CMD ["npm", "start"]
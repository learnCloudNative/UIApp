FROM node:lts-alpine

RUN apt-get install curl wget
# install simple http server for serving static content
RUN npm install -g http-server

# make the 'app' folder the current working directory
WORKDIR /techtonics

# copy both 'package.json' and 'package-lock.json' (if available)
COPY techtonics/package.json ./
COPY techtonics/package-lock.json ./

# install project dependencies
RUN npm install

RUN npm install -g @vue/cli

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY techtonics/ .

RUN chmod 777 -R /techtonics

# build app for production with minification
#EXPOSE 8080
#RUN npm run dev

EXPOSE 8080

#CMD [ "http-server", "dist" ]
CMD [ "npm", "run" ,"dev" ]

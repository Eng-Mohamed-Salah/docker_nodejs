# Run Multi Environment In Docker 
- [1] Create Multi Environment Files Then Run File compose is :
    - by CommandLine : `docker-compose -f docker-compose.prod.yml up -d `

- [2] Open Container By Command Line : `docker exec -it <name_container> bash ` | `sudo docker-compose -f docker-compose.prod.yml up --build -d`

- [3] Create docker-compose Management Two Container Development and Production
    - create file docker-compose.yml and Add Command Based 
    - How To Run  Development and Production in docker-compose.yml : `docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d `
    - Can Build With Run docker Composer : `docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d --build` 

- [4] Multi stage Dockerfile -> Custom Dockerfile With Production And Development
    - Create Multi File Dockerfile -> Dockerfile.prod And Dockerfile.dev
    - Change Step docker-compose.prod in build: ./Dockerfile.prod  And docker-compose.dev in build: ./Dockerfile.dev  And Remove build : . in Dockerfile
    - Change Command Run Project By Type Environment in docker-compose.dev && docker-compose.prod
    - Install Package Project by argument Environment Production Or Development And Make Condition


    - Other Options For Build Environment 
          ```
            #FROM node:18 as base // Run Build Any Environment
            FROM node:18 as development
            # Set working directory
            WORKDIR /app
            # Copy File Manage Node js 
            COPY package.json /app
            # Run Command Line Install Package Project
            RUN npm install 
            # Copy All File Project In Container ( . => all File | index.js => is Select Once file )
            COPY . /app
            # Know Port Application For Devloper 
            EXPOSE 4000
            # Install Bash
            RUN apt-get update && apt-get install -y bash
            CMD [ "npm","start" ]; 
            FROM node:18 as production
            # Set working directory
            WORKDIR /app
            # Copy File Manage Node js 
            COPY package.json /app
            # Run Command Line Install Package Project
            RUN npm install --only=production
            # Copy All File Project In Container ( . => all File | index.js => is Select Once file )
            COPY . /app
            # Know Port Application For Devloper 
            EXPOSE 4000
            # Install Bash
            RUN apt-get update && apt-get install -y bash
            CMD [ "npm","start" ]; 
          ```
    - Than Pass in File docker-compose.prod Or docker-compose.dev
     ```
         build: 
      context: . # Bulid Dockerfile
      target: production #  production | development
    ```
        
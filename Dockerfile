# Install Base Lanugage in the container (number version | latest)
FROM node:18 

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

# Run Application In Container (CMD => CommandLine )
# npm run start-dev
CMD [ "npm", "start-dev" ]; 


# Doc Command line 
# [1] docker build -t <name_image> . => Create Image
# [2] Show All Images Is Install In My Machine => docker images ls
#!! images This Is Base Kernal For Run Multi Container  !!

# [3] Run Container From This Image => docker run --name <cutome_name_to_container> -d <name_images>  ->( -d => dtash "علشان يشتغل في الخلفيه ")  
# [4] docker ps => Show All Running Container
# [5] docker remove <name_container> -f => Remove Container
# [6] docker stop <name_container> => Stop Container

# [7] Run Container And open server In Browser => docker run <cutome_name_to_container> -d -p 4000:3000 <name_images> -> (4000 => port internal container | 3000 => port external container)

# Docker Hub Is Store Images (node,laravel , python.etc..) Can Upload Or Download Images For free

# [8] Enter Container => docker exce -it <name_container> bash  -> ( -it => interactive For Open Termanile )

# [9] If You Want ignore Files -> Create File .dockerignore (dockerignore => ignore Files)
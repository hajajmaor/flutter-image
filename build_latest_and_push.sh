#!bin/bash
# get input: what is the version of the flutter image?
echo "Enter the version of the flutter image: "
read version

# build the image as 'hajajmaor/flutter-image:latest'
echo "Building the image as 'hajajmaor/flutter-image:latest'"
docker build -t hajajmaor/flutter-image .

# tag the image as 'hajajmaor/flutter-image:version'
echo "Tag the image as 'hajajmaor/flutter-image:$version'"
docker tag hajajmaor/flutter-image hajajmaor/flutter-image:$version

# push the images to docker hub
echo "Pushing the images to docker hub"
docker push hajajmaor/flutter-image:latest
docker push hajajmaor/flutter-image:$version

# remove the image from the local machine
echo "Removing the image from the local machine"
docker rmi hajajmaor/flutter-image:latest
docker rmi hajajmaor/flutter-image:$version
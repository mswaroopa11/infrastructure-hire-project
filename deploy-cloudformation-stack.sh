#!/bin/bash
echo "Run this deployment script everytime you would like to update the dockerfile's image"

# docker files, requirements.txt, app need to be in the same location
cp ./app/* .

# # create docker image (flaskdock) from dockerfile, requirements.txt, app
docker build -t flaskdock .

# # copies aren't necessary
rm -rf app.py
rm -rf wsgi.py

# upload the docker image to ECR with bash
## https://docs.aws.amazon.com/AmazonECR/latest/userguide/docker-basics.html
## follow this documentation to push to ECR. the bash commands dont lead easily to automation. Will take a bit more time than alloted.
## I manually followed this process to push to ECR. 


# sudo apt-get install jq

# aws ecr create-repository --repository-name infrastructure-docker --region us-east-1 > repository.json
# repositoryUri=$(jq '.repository.repositoryUri' repository.json)

# docker tag flaskdock ${repositoryUri}
# aws ecr get-login --no-include-email --region us-east-1



# run the cloudformation deploy
#aws cloudformation deploy --template-file infrastructure/infrastructure.yml --stack-name ops-hire-project --tags Name=ops-hire-project Environment=dev




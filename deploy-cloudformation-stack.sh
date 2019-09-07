#!/bin/bash
echo "Run this deployment script everytime you would like to deploy the dockerfile's image to ECR and then use it with the deployed cloudformation stack"

# docker files, requirements.txt, app need to be in the same location
cp ./app/* .

# # create docker image from dockerfile, requirements.txt, app
docker build --tag=infrastructure-hire-proj .

# # copies aren't necessary
rm -rf app.py
rm -rf wsgi.py

# upload the docker image to ECS/ECR with either cloudformation template?? or with bash


# docker image in ECR should have some sort of uuid or arn & account id. 
## this should output from the previous step. 
## use this id(s) and input into cloudformation so that cloudformation knows which docker image to use


# run the cloudformation deploy
#aws cloudformation deploy --template-file infrastructure/infrastructure.yml --stack-name ops-hire-project --tags Name=ops-hire-project Environment=dev

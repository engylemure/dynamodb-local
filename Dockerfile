FROM openjdk:8-jre-alpine

LABEL Jordao Rosario <jordao.rosario01@gmail.com>

RUN apk add --update \
    bash

# Create our main application folder.
RUN mkdir -p opt/dynamodb
WORKDIR /opt/dynamodb

# Download and unpack dynamodb.
RUN wget https://s3-sa-east-1.amazonaws.com/dynamodb-local-sao-paulo/dynamodb_local_latest.tar.gz -q -O - | tar -xz

EXPOSE 8000

CMD ["java","-jar","DynamoDBLocal.jar"]


#!/usr/bin/env bash

export AWS_DEFAULT_REGION=region
export AWS_ACCESS_KEY_ID=id
export AWS_SECRET_ACCESS_KEY=key
echo "Starting dynamoDB local"
cd /home/dynamodblocal/;java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb &
echo "Creating table"
aws dynamodb create-table --cli-input-json file:///home/dynamodblocal/dynamo_table_syntax.json --endpoint-url http://localhost:8000 --region us-west-1


#! /usr/bin/env python3

import boto3
# import sys

attrs = {
  'endpoint_url': 'http://localhost:8000'
}

# if len(sys.argv) == 2:
#     if "prod" in sys.argv[1]:
#         attrs = {}

ddb = boto3.resource('dynamodb',**attrs)
table_name = 'cruddur-messages'

table = ddb.Table(table_name)
response = table.scan()
items = response['Items']
for item in items:
    print(item)
# Week 5 — DynamoDB and Serverless Caching

## Homework

#### [Watched Week 5 - Data Modelling (Live Stream)](https://www.youtube.com/watch?v=5oZHNOaL8Og&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=50)
* #### This was a great video discussing the intricacies of Dynamodb as well as access patterns. There was no coding/implementation involved here just theory and diagraming how we would go about implementing Dynamodb and the access patterns we would need to utilize for the Cruddur application. Kirk Kirkconnell was a great guest instructor with many years of practice which helped us layout all that was needed to accomplish our desired outcome.

#### [Watched Ashish's Week 5 - DynamoDB Considerations](https://www.youtube.com/watch?v=gFPljPNnK2Q&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=52)
* #### Ashish delivered another great video covering security best practices when working with Dynamodb. He covered VPC endpoints, using SCP's to help prevention of table deletions, enabling CloudTrail monitoring and alerts triggers to detect malicious behaviour, and where Dynamodb should be located regionally.

#### Implement Schema Load Script
* #### Created a schema load script for our local dynamodb which created our cruddur-messages table and loaded the schema for it. This was a python script using the boto3 module unlike the previous bash scripts that were used for our postgres database.
![Schema_load_local_ddb](assets/week_5/Schema_load_local_ddb.png)

#### Implement Seed Script
* #### Created a python seed script using the boto3 module to add some mock conversation data to our local dynamodb cruddur-messages table. I also replaced some user values with my user as well as updating the seed values of the postgres database to include my user and a certain Sith Lord.
![seed_sql_file](assets/week_5/Seed_sql_file.png)
![Local_ddb_seed](assets/week_5/Local_ddb_seed.png)

#### Implement Scan Script
* #### Created a python script using the boto3 module to scan the local dynamodb to ensure that our seed data was loaded correctly.
![Local_ddb_scan](assets/week_5/Local_ddb_scan.png)

#### Implement Pattern Scripts for Read and List Conversations
* #### Created two more python scripts using the boto3 module to get the conversations and list the conversations in our local dynamodb.
![Get_conversation](assets/week_5/Get_conversation.png)
![List_conversations](assets/week_5/List_conversations.png)

#### Implement Update Cognito ID Script for Postgres Database
* #### Created a python script to update our cognito user ids in the local postgres database. The cognito user pool id was needed to make this work and this was referenced with an environment variable in our script. A call to run this script was added to the setup script in ./bin/db/setup and at first it wouldn't work. Instead of using the bash source command python3 was used to execute the script. 
![Update_cognito_user_ids](assets/week_5/Update_cognito_user_ids.png)

#### Implement Patterns A through E
* #### I needed to create a dynamodb class just as I created a postgres class to use the methods of the class for certain operations. I created a ddb.py file to define this class and it's methods. I also updated the AWS_ENDPOINT_URL in my docker compose file to use my local dynamodb.

* #### Other updates were made in the app.py file routes to get messages and message groups instead of the hardcoded values.

* #### Created a file in backend-flask/db/sql/users named uuid_from_cognito_user_id.sql.

* #### In backend-flask/bin/ddb/patterns I added a current_year variable to get-conversations.py and list-conversations.py to add to query_params and in get-conversation.py I updated the items reverse method to use the easier reverse function. I assigned items.reverse() to the reversed_array variable then used that in the for loop afterwards.

* #### Updates to the messages.py and group_messages.py files in the backend-flask/services directory.

* #### Updates to the frontend for message group uuids included changes to our path to "/messages/:message_group_uuid".

* #### The MessageForm.js file was updated with message_group_uuid and the MessageGroupItem.js file was updated with the path {`/messages/`+props.message_group.uuid}".

* #### A checkAuth function was created in the frontend to authorize the user instead of using cookies. This function was first abstracted out of the HomeFeed.js page into its own file and then imported into the HomeFeed.js page to pass the token for authorization. 

* #### I went ahead and imported the checkAuth function into the other frontend pages that needed it for authorization as well. These pages were the MessageGroupNewPage.js, MessageGroupPage.js, MessageGroupsPage.js, NotificationsFeedPage.js, and UserFeedPage.js. 

* #### Created MessageGroupNewItem.js in frontend-react-js/src/components and MessageGroupNewPage.js in frontend-react-js/src/pages. Updates were also made to frontend-react-js/src/App.js to import MessageGroupNewPage as well as add the path "/messages/new/:handle" and element MessageGroupNewPage values.

* #### Update to frontend-react-js/src/components/MessageGroupFeed.js to import MessageGroupNewItem and add conditional for message_group_new_item.

* #### To create a new message I needed to update the create_message.py file to import the db and Ddb classes. Updates to the CreateMessage class in create_message.py added the mode parameter to the run method and then added conditionals to check if a message needed to be updated or created. I used the create_message method and the create_message_group from the Ddb class as well.

* #### Created the file backend-flask/db/sql/users/create_message_users.sql

* #### I updated Ddb.py list_message_groups method and create_message_group methods and created the users_short.py file in backend-flask/services

* #### I  creatd short.sql in backend-flask/db/sql/users and users_short.py in backend-flask/services

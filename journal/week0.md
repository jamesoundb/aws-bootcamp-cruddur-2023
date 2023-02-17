# Week 0 — Billing and Architecture

### Recreate Logical Diagram in Lucid charts
My logical diagram:
![Cuddur Logical Diagram](https://user-images.githubusercontent.com/20709997/219713675-a295895f-3400-4f1b-b806-33a9ee0d59d9.png)

### Recreate Conceptual Diagram in Lucid charts
My Conceptual Diagram:
![Cruddur - Conceptual Diagram](https://user-images.githubusercontent.com/20709997/219714203-2da290af-67ba-40b6-8b17-1323da5da0bb.png)

### Create an Admin User
I created my IAM user group and then I added the admin user that I created to this group. Following best practices it is easier to manage users in groups this way so you can attach policies to the groups instead of trying to manage policies based on each individual IAM user.
![IAM_User_Group_edit](https://user-images.githubusercontent.com/20709997/219729139-a6b75cb5-f8ea-409a-a183-a85d00e2b3a9.png)

IAM user admin created with MFA enabled and Access keys generated.
![Admin_User_edit](https://user-images.githubusercontent.com/20709997/219726604-e7ec074e-b3e9-4b03-8f49-91229800755d.png)

### Use Cloudshell

### Generate AWS Credits
I generated Access keys for the admin user.
![API_Access_Keys_edit](https://user-images.githubusercontent.com/20709997/219720758-0f5eb24b-e5fb-43c2-9076-7fd8ef3d7188.png)

### Installed AWS CLI
See .gitpod.yml file

### Create a Billing Alarm
I created this SNS billing alarm topic and confirmed my subscription to it.
![SNS_30_dollar_billing_alarm_edit](https://user-images.githubusercontent.com/20709997/219724908-2cf4c68a-4246-4439-b627-fd860acfb5e1.png)


### Create a Budget
I created this 30 dollar budget
![30_dollar_budget](https://user-images.githubusercontent.com/20709997/219734499-cb8ef77b-ee06-460a-b15b-8ddfe764d810.png)


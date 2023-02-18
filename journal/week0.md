# Week 0 — Billing and Architecture

## Homework

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
Launched the Cloudshell environment from the AWS console
![Screenshot from 2023-02-17 19-14-33](https://user-images.githubusercontent.com/20709997/219821100-4520aa25-bcf2-4f12-8363-97765f4827f4.png)

### Generate AWS Credits
I generated Access keys for the admin user.
![API_Access_Keys_edit](https://user-images.githubusercontent.com/20709997/219720758-0f5eb24b-e5fb-43c2-9076-7fd8ef3d7188.png)

### Installed AWS CLI
See .gitpod.yml file

### Create a Billing Alarm
I created this SNS billing alarm topic and confirmed my subscription to it. I created it using the aws cli and the configuration files can be found in the /aws/json_week_0/ directory.
![SNS_30_dollar_billing_alarm_edit](https://user-images.githubusercontent.com/20709997/219724908-2cf4c68a-4246-4439-b627-fd860acfb5e1.png)

I created this Cloudwatch billing alarm metric which triggers the SNS topic if the metric threshold is met.
![CloudWatch_billing_alarm](https://user-images.githubusercontent.com/20709997/219821431-94e52f41-897b-4f10-afe1-24a83c9bc77a.png)

### Create a Budget
I created this 30 dollar budget using the aws cli, configuration files can be found in the /aws/json_week_0/ directory.
![30_dollar_budget](https://user-images.githubusercontent.com/20709997/219734499-cb8ef77b-ee06-460a-b15b-8ddfe764d810.png)

## Homework Challenges

### Set up MFA for both root and user accounts, created a user group, and attached custom policies to user group.
I always prefer managing users in groups, it takes care of a lot of unnecessary admin tasks.
![IAM_User_Group_edit](https://user-images.githubusercontent.com/20709997/219729139-a6b75cb5-f8ea-409a-a183-a85d00e2b3a9.png)

### Created a customer managed policy to allow billing viewing by user group because of IAM action deprecation occurring in 07/23.
I jumped ahead on updating this policy and added it to my user group to avoid losing access to billing viewing and cost management. It's always good to stay a step ahead of these deprecations to avoid complications in the future.
![New_billing_Cost_Management_Managed_Policy_edit](https://user-images.githubusercontent.com/20709997/219820183-4365eee6-c380-4804-9345-df645d601626.png)

### Created CI/CD pipeline diagram
This is a pretty basic CI/CD pipeline involving AWS services but it certainly helps in getting your code deployed quickly and in an automated fashion.
![CI_CD Pipeline Final](https://user-images.githubusercontent.com/20709997/219820049-2b252951-5e2c-4a10-8a4d-f0c4332b8c6f.png)



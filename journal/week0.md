# Week 0 — Billing and Architecture

## Homework

### Recreate Logical Diagram in Lucid charts
My logical diagram:
https://lucid.app/lucidchart/76c09251-fa51-4f6e-9baf-069f9ab86e4d/edit?invitationId=inv_3f021880-6227-434a-9aad-5962a78ccb30
![Cuddur Logical Diagram](https://user-images.githubusercontent.com/20709997/219713675-a295895f-3400-4f1b-b806-33a9ee0d59d9.png)

### Recreate Conceptual Diagram in Lucid charts
My Conceptual Diagram:
https://lucid.app/lucidchart/b206aa39-9f9c-4c4b-b599-1e3d3279b9e7/edit?invitationId=inv_723eedc0-d0ef-4ae5-9bb0-374f2e2b78bc
![Cruddur - Conceptual Diagram](https://user-images.githubusercontent.com/20709997/219714203-2da290af-67ba-40b6-8b17-1323da5da0bb.png)

### Create an Admin User
I created my IAM user group and then I added the admin user that I created to this group. Following best practices it is easier to manage users in groups this way so you can attach policies to the groups instead of trying to manage policies based on each individual IAM user.
![IAM_User_Group_edit](https://user-images.githubusercontent.com/20709997/219975386-04c2a92f-9e31-42b1-ac8b-568be33577de.png)

IAM user admin created with MFA enabled and Access keys generated.
![Admin_User_edit](https://user-images.githubusercontent.com/20709997/219975406-e9db51a4-2ec9-4b69-b50e-f024a082bef6.png)

### Use Cloudshell
Launched the Cloudshell environment from the AWS console
![Screenshot from 2023-02-17 19-14-33](https://user-images.githubusercontent.com/20709997/219821100-4520aa25-bcf2-4f12-8363-97765f4827f4.png)

### Generate AWS Credits
I generated Access keys for the admin user.
![API_Access_Keys_edit](https://user-images.githubusercontent.com/20709997/219975425-469c523c-2096-48df-b907-9047be79d7f8.png)

### Installed AWS CLI
See .gitpod.yml file

### Create a Billing Alarm
I created this SNS billing alarm topic and confirmed my subscription to it. I created it using the aws cli and the configuration files can be found in the /aws/json_week_0/ directory.
![SNS_30_dollar_billing_alarm_edit](https://user-images.githubusercontent.com/20709997/219975452-ef36ef0d-35fe-4500-b0e2-edf2ec5b3d51.png)

I created this Cloudwatch billing alarm metric which triggers the SNS topic if the metric threshold is met.
![CloudWatch_billing_alarm](https://user-images.githubusercontent.com/20709997/219821431-94e52f41-897b-4f10-afe1-24a83c9bc77a.png)

### Create a Budget
I created this 30 dollar budget using the aws cli, configuration files can be found in the /aws/json_week_0/ directory.
![30_dollar_budget](https://user-images.githubusercontent.com/20709997/219734499-cb8ef77b-ee06-460a-b15b-8ddfe764d810.png)

## Homework Challenges

### Set up MFA for both root and user accounts, created a user group, and attached custom policies to user group.
I always prefer managing users in groups, it takes care of a lot of unnecessary admin tasks.
![IAM_User_Group_edit](https://user-images.githubusercontent.com/20709997/219975470-fb5ba3b4-e64b-4c2e-bad2-af278eb7ce80.png)

### Created a customer managed policy to allow billing viewing by user group because of IAM action deprecation occurring in 07/23.
I jumped ahead on updating this policy and added it to my user group to avoid losing access to billing viewing and cost management. It's always good to stay a step ahead of these deprecations to avoid complications in the future.
![New_billing_Cost_Management_Managed_Policy_edit](https://user-images.githubusercontent.com/20709997/219975482-f4ddac30-68fe-41b7-869d-58270d5a99dd.png)

### Created CI/CD pipeline diagram
This is a pretty basic CI/CD pipeline involving AWS services but it certainly helps in getting your code deployed quickly and in an automated fashion.
https://lucid.app/lucidchart/b08603eb-e77c-4aee-a5b6-e597d95d2a9e/edit?invitationId=inv_e469d963-00c3-4a32-92f4-cac8b3a49ae0
![CI_CD Pipeline Final](https://user-images.githubusercontent.com/20709997/219820049-2b252951-5e2c-4a10-8a4d-f0c4332b8c6f.png)



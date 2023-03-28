# TERRAFORM 3-EC2 INSTANCES BEHIND AN ELASTIC APPLICATION LOAD BALANCER (ALB)
## DEPLOYMENT ELEMENTS
1. Create a VPC
2. Create 3 Public Subnets
3. Create 3 Internet Gateways
4. Public Route Tables
5. Security Group
6. 3-EC2 INSTANCES
7. Create Target Group and ALB

## Step 1: Define Provider Details
- Create [provider.tf](./provider.tf) to mention cloud provider details:

## Step 2: Define all Required Variables in the [variable.tf](./variable.tf) file.

## Step 3: Create Networking Components (VPC, Subnets, Igw, Route Tables)
First, create the [vpc_subnet.tf](./vpc_subnet.tf) file.

## Step 4: Create Custom Security Group
- Create [security.tf](./security.tf) file.
  
## Step 5: Create 3 EC2 Instances
- Create an [ec2.tf](./ec2.tf) file.

## Step 6: Fetch Availability Zone and Instance Role Details Using Data Block
- Create [data.tf](./data.tf) file.

## Step 7: Create Target Group and Application Load Balancer
- Create [alb.tf](./alb.tf) file.

## Step 8: Create a Shell Script for Bootstrapping Few Tasks
- Create a bash [userdata](userdata-apache-ami.sh) file.

## Step 9: Provide a Few Required Outputs
- Create [Output.tf](output.tf) file.

> After creating all required tf files now it’s time to initiate terraform itself so that any modules or providers can be downloaded. Before doing that we can format all tf files to make this more understandable.
>
> `terraform fmt`: Use this command to make all files understandable to all. It can detect whether any piece of code is serialized or not and if yes, then it removes that deserialization and gets this more standard.
>
> `terraform validate`: This command is used to validate the codes which are written. If there is any syntax mismatching, then it will throw an error to get this fixed.
>
> `terraform init`: This command is used to initialize modules or providers mentioned in the script, which means by doing that terraform simply downloads all APIs based on the cloud provider and which can take forward remaining operations.

> `terraform plan`: Once we initialize, then we need to know the plan how to terraform will proceed with other operations or which resources should be created first or when, everything will be visible by using terraform plan command.
>
> `terraform apply`: After the terraforming plan, we need to apply the configuration, so that it will be deployed in the AWS environment.
>
> Finally, paste the `alb_id` from the output on your browser, and refresh multiple times to view the ALB balancing the load across the three different ec2-instances. See snapshot ![here](./snapshots/alb_dns-on-browser-0.png).
> -------------------------------------------------------------------------------
> ACKNOWLEDGEMENT: [How to Deploy a Set of EC2 Instances behind an ALB Using Terraform by Plain English](https://plainenglish.io/blog/deploy-a-set-of-ec2-instances-behind-an-alb-using-terraform-403fe584f09e)
readme file
==========

1. install terraform
2. setup env variable
3. install aws cli
4. run aws configure


providers
============
provider is a cloud platform, which terraform is connecting.
eg: aws, azure, gcp..ect
also, terraform can be integrated and connected to many tools (onpremises, cloud) also other than cloud platforms.

HCL - hashicorp configuration language 

block_name "type" "name" {

}

recouser, data, output, variable, module, terraform, ect...

recource "aws_instance" "name_of_the_instance"{
    key = value
}


aws_instance === syntax 
name of the instance = can be anything, this is for terraform reference 
key = value eg: ami = ami id here
                name= name of the instance
                sg = sg id

terraform was built on GO language.

========================================
terraform init - downloads the provider
terraform plan - plan the infra but it will not create
terraform apply - create the infra
terraform destroy - destroys the infra
===========================

variables:

syntax: 

variable "name_of_variable"{
    default = " "
}


var precedence: high to low
============================
1. command line (terraform plan -var="sg_name=allow-all-terraform-cmd")
2. terraform.tfvars
3. env variables ( set TF_VAR_sg_name = "from-env")
4. default values inside variables.tf 

Data types:
============
string, set, list,  number..


conditions:
==================
expression ? "true-value" : "false-value"


loops:
=============
1. count based
    works for LIST (duplicates allowed and preserve the order)
    count = number
    count.index


2. for each 
    works for SET/MAP
    (removes any dupicate values, order not gauranteed)

    toset(list) --> will convert list to set


3. dynamic: only for repeated code inside resource


output "name of the output" value
==================================
eg:
output "ec2_output" {
    value = aws_instance.example
}

Data Source:
=============
if you want to get the information from the provider, we can use data sources.
it is useful when you want to query the information from provider.


Functions:
==========
we can not write your own custom functions in terraform.
we only use the built in functions. but if you want, you have to write your own provider 
eg:
max(1,3,99,4)
min(1,4,19)
upper("jai")
lower("JAI")
endswith("hello","o") -> true 
substr("hello, world", 6, 10)
file(path) -> reads the content 
length(list) -> gives the length of a list 

merge:

{
    a="b"
    c="d"
}

{
    c="new"
    d="e"
}

if we merge these:

{
    a="b"
    c="new"  # updating the value
    d="e"
}



State:
========
terraform stores/tracks what it had created in the state file, it is like memory to terrform

.tf files --> descired/declated/expected/asked infra
actual infra --> what is actually created inside provider
state --> what terraform created 

desired infra--> actual infra 


when we run terrform init for the first time:
===========================================
declare infra
actual infra not created
state is empty

terraform apply: 
terraform creates the resources in provider and note them in state file.

apply again:
.tf files, state file, actual file 
state file == actual infra

scan .tf files
.tf files == actual infra 

udpate tf files:
===============
apply..
.tf files, actual infra, state file - scan them all

state file == actual infra --> means nothing changed outside of terraform

.tf files != actual infra --> terraform will update based on tf file updates

if someone changes directly in AWS ui instead of terraform
==========================================================
apply..

state file != actual infra --> means someone changed outside of terraform

desired != actual infra 

destroy:
=========

delete the infra, update state file

state file is for terraform use
tf files are used by us

state file is locked by terraform when it is performing actions on it

remote state file:
==================
In Colloboration environments, state file should be stored in remote location like S3, so that we can prevent 
errors and duplicates. it should be locked so parellel modifications should not9 be allowed.


remote state secure:
===================
1. users should not have access to delete except terraform
2. you should enable versioning 
3. data replication in another bucket (backup)

locals:
==========
1. locals are like variables but have extra capabilities 
2. locals can not be overridden
3. we can store functions and expressions also in locals
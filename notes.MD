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
terraform init
terraform plan
terraform apply 
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
    works for SET (removes any dupicate values)

3. dynamic 


output "name of the output" value
=====================================



